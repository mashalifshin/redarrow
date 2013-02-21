class ContactInfosController < ApplicationController
  protect_from_forgery
  
  def index
    @contact_infos = ContactInfo.live
    if(params[:mailing_list_contact].nil?)
      @contact = MailingListContact.new
    else
      @contact = MailingListContact.new(params[:mailing_list_contact])
      @contact.save
    end
  end

  def create
    @contact = MailingListContact.new(params[:mailing_list_contact])
      if @contact.save
        flash[:notice] = "Thank you.  We look forward to getting in touch."
        redirect_to contact_infos_path
      else
        flash[:error] = "There was a problem with your submission. Please correct the errors below and try again."
        redirect_to contact_infos_path(params)
      end
  end

end