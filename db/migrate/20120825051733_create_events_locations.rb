class CreateEventsLocations < ActiveRecord::Migration
  def change
    create_table :events_locations, :id => false do |t|
      t.references :event
      t.references :location
    end
  end
end
