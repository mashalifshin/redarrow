class Exhibition < ActiveRecord::Base
  has_many :exhibition_images

  attr_accessible :artist, :closing, :description, :opening, :reception_date, :title, :exhibition_images_attributes
  accepts_nested_attributes_for :exhibition_images, :allow_destroy => true
end
