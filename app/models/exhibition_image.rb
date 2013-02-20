class ExhibitionImage < ActiveRecord::Base
  belongs_to :exhibition

  attr_accessible :image, :image_cache, :remove_image, :exhibition_id, :artist,
                  :title, :year, :media, :dimensions, :thumbnail_order
    
  mount_uploader :image, WorkShowcaseImageUploader

  scope :ordered, :order => "thumbnail_order ASC"
end
