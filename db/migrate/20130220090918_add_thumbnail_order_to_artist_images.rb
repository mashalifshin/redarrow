class AddThumbnailOrderToArtistImages < ActiveRecord::Migration
  def change
    add_column :artist_images, :thumbnail_order, :integer
  end
end
