class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    if user_signed_in?
      redirect_to main_app.home_index_path, :alert => exception.message
    else
      redirect_to new_user_session_path, :alert => exception.message
    end
  end

  def after_sign_in_path_for(resource)
    if current_user.role == "client"
      exclusive_index_path
    else
      super
    end
  end

end
