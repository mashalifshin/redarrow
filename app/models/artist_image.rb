class ArtistImage < ActiveRecord::Base
  belongs_to :artist

  attr_accessible :image, :image_cache, :remove_image, :artist_id, :dimensions, 
                  :media, :title, :year, :thumbnail_order

  mount_uploader :image, WorkShowcaseImageUploader

  scope :ordered, :order => "thumbnail_order ASC"
end
