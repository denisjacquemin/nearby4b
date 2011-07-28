class Community < ActiveRecord::Base
  has_many :people
  has_many :roles
  accepts_nested_attributes_for :roles
  
  validates :name, :presence => true
  
  scope :all_by, Community.order("name ASC")
end
