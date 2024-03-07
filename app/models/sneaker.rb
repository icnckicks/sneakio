class Sneaker < ApplicationRecord

    has_many :listings, dependent: :destroy
    accepts_nested_attributes_for :listings, allow_destroy: true
    validates :brand, :name, presence: true
    validates :colorway, length: { maximum: 100 }
    validates :size, :quantity, numericality: { greater_than: 0 }
    validates :purchase_price, numericality: true
    validates :size_category, inclusion: { in: %w(M W GS PS TD) }
    validates :payout, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
    
    
    def final_return_date
        return if purchase_date.blank? || return_period.blank?
        purchase_date + return_period.days
    end
    
    def days_in_inventory
        return unless purchase_date
        (Date.today - purchase_date).to_i
    end
    
    def self.total_items_in_stock
        where(sold: false).sum(:quantity)
    end
    
    def self.total_inventory_value
        where(sold: false).sum { |sneaker| sneaker.purchase_price * sneaker.quantity }
    end
    
    def self.total_sales
        where(sold: true).sum(:sale_price)
    end
    
    def roi
        return 0 unless purchase_price.present? && payout.present? && payout > 0
        ((payout - purchase_price) / purchase_price.to_f) * 100
    end
    
    def self.total_combined_roi
        total_payout = where(sold: true).sum(:payout)
        total_purchase_price = where(sold: true).sum(:purchase_price)
        
        return 0 if total_purchase_price == 0
        ((total_payout - total_purchase_price) / total_purchase_price.to_f) * 100
    end
    
    
    def profit
        return 0 unless purchase_price.present? && payout.present? && payout > 0
        (payout - purchase_price)
    end
    
    def self.total_item_sold
        where(sold: true).sum(:quantity)
    end
    
    def self.total_profit
        where(sold: true).sum { |sneaker| sneaker.profit }
    end
    
    def self.total_revenue
        where(sold: true).sum { |sneaker| sneaker.payout }
    end
    
    def self.total_spend
        sum(:purchase_price)
    end
    
    
end
