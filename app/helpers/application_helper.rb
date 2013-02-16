module ApplicationHelper

  def current_announcement
    Announcement.current.first
  end

end
