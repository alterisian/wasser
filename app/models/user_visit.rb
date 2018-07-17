class UserVisit < ActiveRecord::Base
  belongs_to :user
  belongs_to :lake
end
