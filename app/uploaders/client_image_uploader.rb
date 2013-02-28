class ClientImageUploader < ImageUploader
  
  include CarrierWave::MiniMagick
  
  version :large do
    process :resize_to_fit => [600, 600]
  end
  
end