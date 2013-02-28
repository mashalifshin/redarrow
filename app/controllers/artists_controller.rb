class ArtistsController < ApplicationController
  protect_from_forgery
  
  def index
    @artists = Artist.live.shuffle
  end
end