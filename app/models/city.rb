class City < ActiveRecord::Base
  validates :name, :presence => true

  belongs_to :status
  has_and_belongs_to_many :regions
  has_many :locations
  has_many :organizers
end
