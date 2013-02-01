class AddExhibitionImageToExhibitionImages < ActiveRecord::Migration
  def change
    add_column :exhibition_images, :exhibition_image, :string
  end
end
