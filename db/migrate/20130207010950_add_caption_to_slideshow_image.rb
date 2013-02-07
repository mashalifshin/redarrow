class AddCaptionToSlideshowImage < ActiveRecord::Migration
  def change
    add_column :slideshow_images, :caption, :string
  end
end
