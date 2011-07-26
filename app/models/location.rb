class Location < ActiveRecord::Base
  
  belongs_to :person
  belongs_to :planner, :class_name => "Person"
  
  validates :address, :person, :planner, :presence => true
end
