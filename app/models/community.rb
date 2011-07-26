class Community < ActiveRecord::Base
  has_many :people
  
  validates :name, :presence => true
  
  scope :all, Community.order("name ASC")
end
