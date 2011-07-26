class Person < ActiveRecord::Base
  belongs_to :Community
  
  validates :community_id, :firstname, :lastname, :presence => true
end
