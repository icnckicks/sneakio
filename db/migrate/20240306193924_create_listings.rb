class CreateListings < ActiveRecord::Migration[7.1]
  def change
    create_table :listings do |t|
      t.references :sneaker, null: false, foreign_key: true
      t.string :platform
      t.decimal :price

      t.timestamps
    end
  end
end
