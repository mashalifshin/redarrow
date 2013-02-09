class AboutInfosController < ApplicationController
  protect_from_forgery
  
  def index
    @about_infos = AboutInfo.live
  end
end