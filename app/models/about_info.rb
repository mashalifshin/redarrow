class AboutInfo < ActiveRecord::Base
  attr_accessible :body, :title, :live

  scope :live, :conditions => 'live IS TRUE'
end
