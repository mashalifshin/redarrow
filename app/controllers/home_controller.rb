class HomeController < ApplicationController
  protect_from_forgery  
  
  def show
    @slideshow_images = SlideshowImage.live
  end
end
