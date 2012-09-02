class CreateEventsRegions < ActiveRecord::Migration
  def change
    create_table :events_regions, :id => false do |t|
      t.references :event
      t.references :region
    end
  end
end
