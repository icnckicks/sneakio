class CreateSneakers < ActiveRecord::Migration[7.1]
  def change
    create_table :sneakers do |t|
      t.string :brand
      t.string :name
      t.integer :size
      t.string :size_category
      t.integer :quantity
      t.decimal :purchase_price
      t.date :purchase_date

      t.timestamps
    end
  end
end
