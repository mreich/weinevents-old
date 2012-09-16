# Cities are a pre-defined set of larger cities used to aggregate all events happening around these cities. An example for a city is Munich.

class City < ActiveRecord::Base
  validates :name, :presence => true

  belongs_to :status
  has_and_belongs_to_many :regions
  has_and_belongs_to_many :events
  has_many :locations
  has_many :organizers
  
  # Used to create nice URLs for the city pages. 
  def to_param
    "#{id}-#{name.parameterize}"
  end
  
end
