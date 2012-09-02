class CreateLocationsOrganizers < ActiveRecord::Migration
  def change
    create_table :locations_organizers, :id => false do |t|
      t.references :organizer
      t.references :location
    end
  end
end
