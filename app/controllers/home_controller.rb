class HomeController < ApplicationController
  protect_from_forgery  
  
  def index
    @slideshow_images = SlideshowImage.live.shuffle
  end
end
