class SlideshowImageUploader < ImageUploader

  include CarrierWave::MiniMagick

  # Create different versions of your uploaded files:
  version :slide do
    process :resize_to_fit => [1300, 600]
  end

end