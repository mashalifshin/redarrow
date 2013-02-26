class Artist < ActiveRecord::Base
  has_many :artist_images
  belongs_to :user

  attr_accessible :name, :live, :statement, :cv, :cv_cache, :remove_cv, :press, :press_cache, :remove_press,
                  :user_id, :artist_image_ids, :artist_images_attributes, :allow_destroy => true

  accepts_nested_attributes_for :artist_images, :allow_destroy => true

  mount_uploader :cv, PdfUploader
  mount_uploader :press, PdfUploader

  scope :live, :conditions => "live IS TRUE"
end
