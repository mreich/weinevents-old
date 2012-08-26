class Role < ActiveRecord::Base
  validates :name, :presence => true

  belongs_to :status
  has_many :events, :through => :EventRole
  has_many :organizers, :through => :OrganizerRole
  has_many :locations, :through => :LocationRole
  has_many :users,  :through => :EventRole
  has_many :users, :through => :OrganizerRole
  has_many :users, :through => :LocationRole
end
