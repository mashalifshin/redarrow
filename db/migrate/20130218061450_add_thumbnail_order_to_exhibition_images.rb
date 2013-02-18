class AddThumbnailOrderToExhibitionImages < ActiveRecord::Migration
  def change
    add_column :exhibition_images, :thumbnail_order, :integer
  end
end
