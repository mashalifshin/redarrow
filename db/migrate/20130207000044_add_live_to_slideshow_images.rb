class AddLiveToSlideshowImages < ActiveRecord::Migration
  def change
    add_column :slideshow_images, :live, :boolean, :default => false
  end
end
