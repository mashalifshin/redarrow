module ArtistsHelper
  
  # If we are on the artists page, we don't show the artist name again in the label.
  def get_artist_name artist_image
    artist_image.artist.name
  end
  
end