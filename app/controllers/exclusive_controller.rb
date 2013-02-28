class ExclusiveController < ApplicationController
  protect_from_forgery
  
  def index
    if user_signed_in?
      @images = ClientImage.where(:user_id => current_user.id).live.ordered
    else 
      redirect_to new_user_session_path, :alert => "Please sign in to view exclusive content."
    end
  end

end