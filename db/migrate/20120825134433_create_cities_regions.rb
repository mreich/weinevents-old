class CreateCitiesRegions < ActiveRecord::Migration
  def change
    create_table :cities_regions do |t|
      t.references :city
      t.references :region

      t.timestamps
    end
    add_index :cities_regions, :city_id
    add_index :cities_regions, :region_id
  end
end
