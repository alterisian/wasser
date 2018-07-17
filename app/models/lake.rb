class Lake < ActiveRecord::Base
  has_many :lake_views
  acts_as_votable 
end
