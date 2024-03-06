class DropListings < ActiveRecord::Migration[7.1]
  def change
    drop_table :listings
  end
end
