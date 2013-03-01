class AboutInfosController < ApplicationController
  protect_from_forgery
  
  def index
    @about_infos = AboutInfo.live_and_ordered
  end
end