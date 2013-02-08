class Exhibition < ActiveRecord::Base
  has_many :exhibition_images

  attr_accessible :artists, :closing, :description, :opening, :reception_date, :reception_end_time, :title, :live, 
                  :exhibition_image_ids, :exhibition_images_attributes, :allow_destroy => true

  accepts_nested_attributes_for :exhibition_images, :allow_destroy => true

  scope :chronological, :conditions => "live IS TRUE", :order => "opening DESC"
end
