class Location < ActiveRecord::Base
  validates :name, :presence => true
  validates :street_1, :presence => true
  validates :addresscity, :presence => true
  validates :zip, :presence => true

  belongs_to :status
  belongs_to :city
  has_and_belongs_to_many :events
end
