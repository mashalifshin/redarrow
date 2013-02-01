class AddSlideshowImageToSlideshowImages < ActiveRecord::Migration
  def change
    add_column :slideshow_images, :slideshow_image, :string
  end
end
