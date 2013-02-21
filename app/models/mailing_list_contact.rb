class MailingListContact < ActiveRecord::Base
  attr_accessible :email, :name

  validates :name,  :presence => true, 
                    :length => {:maximum => 254}

  validates :email, :presence => true, 
                    :uniqueness => true,
                    :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
end


