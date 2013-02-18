class ContactInfo < ActiveRecord::Base
  attr_accessible :body, :title, :live, :info_order

  scope :live, :conditions => 'live IS TRUE', :order => "info_order ASC"
end
