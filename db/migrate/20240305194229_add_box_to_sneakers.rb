class AddBoxToSneakers < ActiveRecord::Migration[7.1]
  def change
    add_column :sneakers, :box, :string
  end
end
