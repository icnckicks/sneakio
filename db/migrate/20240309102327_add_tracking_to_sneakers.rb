class AddTrackingToSneakers < ActiveRecord::Migration[7.1]
  def change
    add_column :sneakers, :ups, :boolean
    add_column :sneakers, :fedex, :boolean
    add_column :sneakers, :usps, :boolean
    add_column :sneakers, :tracking_number, :string
  end
end
