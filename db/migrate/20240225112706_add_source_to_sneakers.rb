class AddSourceToSneakers < ActiveRecord::Migration[7.1]
  def change
    add_column :sneakers, :source, :string
  end
end
