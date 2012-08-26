class Event < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true
  validates :start_datetime, :presence => true
  validates :end_datetime, :presence => true

  belongs_to :status
  belongs_to :organizer
  has_and_belongs_to_many :locations
  has_and_belongs_to_many :regions
  has_many :users, :through => :EventUsers
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :categories
end