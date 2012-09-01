class Role < ActiveRecord::Base
  validates :name, :presence => true

  belongs_to :status
  has_many :events, :through => :events_users
  has_many :organizers, :through => :organizers_users
#  has_many :locations, :through => :LocationRole
  has_many :users,  :through => :events_users
  has_many :users, :through => :organizers_users
  has_many :users, :through => :locations_users
end
