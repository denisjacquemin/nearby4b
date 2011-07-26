class Person < ActiveRecord::Base
  belongs_to :Community
  has_many :Locations
  has_many :planners, :class_name => "Person", :foreign_key => "planner_id"
  has_and_belongs_to_many :roles
  
  validates :community_id, :firstname, :lastname, :presence => true
end
