class LocationsOrganizers < ActiveRecord::Base
  belongs_to :organizer
  belongs_to :location
end
