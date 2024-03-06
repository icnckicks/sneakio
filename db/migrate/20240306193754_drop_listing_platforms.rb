class DropListingPlatforms < ActiveRecord::Migration[7.1]
  def change
    drop_table :listing_platforms
  end
end
