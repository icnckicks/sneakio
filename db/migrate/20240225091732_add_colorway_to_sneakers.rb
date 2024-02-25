class AddColorwayToSneakers < ActiveRecord::Migration[7.1]
  def change
    add_column :sneakers, :colorway, :string
  end
end
