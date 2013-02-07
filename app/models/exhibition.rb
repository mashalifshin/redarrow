class Exhibition < ActiveRecord::Base
  has_many :exhibition_images

  attr_accessible :artist, :closing, :description, :opening, :reception_date, :title, :live, :exhibition_image_ids,
                  :exhibition_images_attributes, :allow_destroy => true

  accepts_nested_attributes_for :exhibition_images, :allow_destroy => true

end
