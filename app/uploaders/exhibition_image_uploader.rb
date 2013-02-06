# encoding: utf-8

class ExhibitionImageUploader < RedArrowImageUploader

  include CarrierWave::MiniMagick

  # Create different versions of your uploaded files:
  version :thumbnail do
    process :resize_to_fill => [50, 50]
  end

end
