class AboutInfoImageUploader < ImageUploader

  include CarrierWave::MiniMagick

  # Create different versions of your uploaded files:
  version :compact do
    process :resize_to_fit => [150, 200]
  end

end