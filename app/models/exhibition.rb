class Exhibition < ActiveRecord::Base
  attr_accessible :artist, :closing, :description, :opening, :reception_date, :title
end
