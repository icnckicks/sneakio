class Sneaker < ApplicationRecord
    validates :brand, :name, presence: true
    validates :colorway, length: { maximum: 100 }
    validates :size, :quantity, numericality: { greater_than: 0 }
    validates :purchase_price, numericality: true
    validates :size_category, inclusion: { in: %w(M W GS PS TD) }
    
    def final_return_date
        return if purchase_date.blank? || return_period.blank?
        purchase_date + return_period.days
    end
    
    def days_in_inventory
        return unless purchase_date
        (Date.today - purchase_date).to_i
    end
    
    def self.total_items_in_stock
        sum(:quantity)
    end
    
    def self.total_inventory_value
        all.sum { |sneaker| sneaker.purchase_price * sneaker.quantity }
    end
end
