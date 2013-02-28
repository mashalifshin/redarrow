class AboutInfoImageUploader < ImageUploader

  include CarrierWave::MiniMagick

  version :compact do
    process :resize_to_fit => [150, 200]
  end

end