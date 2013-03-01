class AboutInfo < ActiveRecord::Base
  attr_accessible :body, :title, :live, :info_order, :image, :image_cache, :remove_image

  mount_uploader :image, AboutInfoImageUploader

  scope :live_and_ordered, :conditions => 'live IS TRUE', :order => :info_order
end
