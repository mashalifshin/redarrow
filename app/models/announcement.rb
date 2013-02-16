class Announcement < ActiveRecord::Base
  attr_accessible :end_date, :link_target, :live, :start_date, :text

  scope :current, :conditions => ["live IS TRUE AND ? between start_date AND end_date", Date.today]
end
