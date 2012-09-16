class CreateCitiesEvents < ActiveRecord::Migration
  def change
    create_table :cities_events, :id => false do |t|
      t.references :city
      t.references :event
    end
  end
end
