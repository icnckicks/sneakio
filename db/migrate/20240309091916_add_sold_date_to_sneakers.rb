class AddSoldDateToSneakers < ActiveRecord::Migration[7.1]
  def change
    add_column :sneakers, :sold_date, :date
  end
end
