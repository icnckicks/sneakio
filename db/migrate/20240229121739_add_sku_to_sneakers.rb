class AddSkuToSneakers < ActiveRecord::Migration[7.1]
  def change
    add_column :sneakers, :sku, :string
  end
end
