class ExhibitionImage < ActiveRecord::Base
  belongs_to :exhibition

  attr_accessible :image, :image_cache, :remove_image, :exhibition_id, :artist,
                  :title, :year, :media, :dimensions
    
  mount_uploader :image, ExhibitionImageUploader
end
