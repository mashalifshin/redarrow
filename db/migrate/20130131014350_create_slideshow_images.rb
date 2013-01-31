class CreateSlideshowImages < ActiveRecord::Migration
  def change
    create_table :slideshow_images do |t|

      t.timestamps
    end
  end
end
