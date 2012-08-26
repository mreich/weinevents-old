class Status < ActiveRecord::Base
  validates :name, :presence => true

  has_many :events
  has_many :organizers
  has_many :locations
  has_many :users
  has_many :profiles
  has_many :regions
  has_many :countries
  has_many :tags
  has_many :categories
  has_many :cities
  has_many :roles
  has_many :types
end
