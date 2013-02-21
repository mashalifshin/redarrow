class AboutInfo < ActiveRecord::Base
  attr_accessible :body, :title, :live, :image, :image_cache, :remove_image

  mount_uploader :image, AboutInfoImageUploader

  scope :live, :conditions => 'live IS TRUE'
end
