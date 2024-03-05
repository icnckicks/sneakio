class AddPayoutToSneakers < ActiveRecord::Migration[7.1]
  def change
    add_column :sneakers, :payout, :decimal
  end
end
