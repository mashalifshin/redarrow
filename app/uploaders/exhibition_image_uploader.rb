class ExhibitionImageUploader < ImageUploader

  include CarrierWave::MiniMagick

  # Create different versions of your uploaded files:
  version :full_size do
    process :resize_to_fit => [500, 500]
  end

  version :compact do
    process :resize_to_fit => [200, 200]
  end

  version :thumbnail do
    process :resize_to_fit => [50, 50]
  end

end
