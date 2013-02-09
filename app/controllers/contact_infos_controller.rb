class ContactInfosController < ApplicationController
  protect_from_forgery
  
  def index
    @contact_infos = ContactInfo.live
  end
end