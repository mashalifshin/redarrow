module ExclusiveHelper
  
  # If we are on the artists page, we don't show the artist name again in the label.
  def get_artist_name client_image
    client_image.artist
  end
  
end