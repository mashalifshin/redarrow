class RenameSlideshowImageToImage < ActiveRecord::Migration
  def up
     change_table :slideshow_images do |t|
       t.rename :slideshow_image, :image
     end
   end

   def down
     change_table :slideshow_images do |t|
       t.rename :image, :slideshow_image
     end
   end
end
