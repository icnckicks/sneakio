class AddReturnPeriodToSneakers < ActiveRecord::Migration[7.1]
  def change
    add_column :sneakers, :return_period, :integer
  end
end
