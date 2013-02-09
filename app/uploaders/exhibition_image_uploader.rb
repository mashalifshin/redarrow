
class ExhibitionImageUploader < ImageUploader

  include CarrierWave::MiniMagick

  # Create different versions of your uploaded files:
  version :thumbnail do
    process :resize_to_fit => [50, 50]
  end

end
