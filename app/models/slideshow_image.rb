class SlideshowImage < ActiveRecord::Base
  attr_accessible :image, :image_cache, :remove_image, :live, :caption
  
  mount_uploader :image, SlideshowImageUploader

  scope :live,          :conditions => "live IS TRUE"
end
