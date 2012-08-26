class EventsRegions < ActiveRecord::Base
  belongs_to :event
  belongs_to :region
end
