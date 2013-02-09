class Exhibition < ActiveRecord::Base
  has_many :exhibition_images

  attr_accessible :artists, :closing, :description, :opening, :reception_date, :reception_end_time, :title, :live, 
                  :press_release, :press_release_cache, :remove_press_release, :poster, :poster_cache, :remove_poster,
                  :exhibition_image_ids, :exhibition_images_attributes, :allow_destroy => true

  accepts_nested_attributes_for :exhibition_images, :allow_destroy => true

  scope :chronological, :conditions => "live IS TRUE", :order => "opening DESC"

  mount_uploader :press_release, PdfUploader
  mount_uploader :poster, PdfUploader
end
