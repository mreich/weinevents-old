class LocationsUsers < ActiveRecord::Base
  belongs_to :location
  belongs_to :user
  belongs_to :role
end