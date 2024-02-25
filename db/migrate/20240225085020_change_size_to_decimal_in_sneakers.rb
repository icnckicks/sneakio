class ChangeSizeToDecimalInSneakers < ActiveRecord::Migration[7.1]
  def change
    change_column :sneakers, :size, :decimal, precision: 5, scale: 2
  end
end
