class AddSalePriceAndSoldToSneakers < ActiveRecord::Migration[7.1]
  def change
    add_column :sneakers, :sale_price, :decimal
    add_column :sneakers, :sold, :boolean
  end
end
