class HomeController < ApplicationController
  protect_from_forgery  
  
  def index
    @slideshow_images = SlideshowImage.live
  end
end
