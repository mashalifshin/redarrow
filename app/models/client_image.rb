class ClientImage < ActiveRecord::Base
  belongs_to :user
  
  attr_accessible :artist, :comment, :dimensions, :media, :title, :view_order, :year, :user_id, :live,
                  :image, :image_cache, :remove_image
                  
  mount_uploader :image, ClientImageUploader
  
  scope :live, :conditions => "live IS TRUE"
  scope :ordered, :order => "view_order ASC"
end
