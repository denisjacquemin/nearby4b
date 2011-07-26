class Role < ActiveRecord::Base
  
  scope :all_by_community, lambda { |community_id| Role.where('community_id=?', community_id ).order('name ASC') }
    
  has_and_belongs_to_many :people
end
