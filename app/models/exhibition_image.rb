class ExhibitionImage < ActiveRecord::Base
  belongs_to :exhibition

  attr_accessible :exhibition_image, :exhibition_image_cache, :remove_exhibition_image, :exhibition_id, :artist, 
                  :title, :year, :media, :dimensions, :exhibition_attributes
    
  accepts_nested_attributes_for :exhibition, :allow_destroy => true
  
  mount_uploader :exhibition_image, ExhibitionImageUploader
end
