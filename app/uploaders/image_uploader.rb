
class ImageUploader < RedArrowUploader
  
  # White list of extensions which are allowed to be uploaded.
  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
