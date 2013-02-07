class SlideshowImage < ActiveRecord::Base
  attr_accessible :slideshow_image, :slideshow_image_cache, :remove_slideshow_image, :live
  
  mount_uploader :slideshow_image, SlideshowImageUploader
end
