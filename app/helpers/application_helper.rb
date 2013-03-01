module ApplicationHelper

  def current_announcement
    Announcement.current.first
  end

  def users_first_name
    current_user.name.split[0...1].first if user_signed_in? && !current_user.name.nil?
  end
end
