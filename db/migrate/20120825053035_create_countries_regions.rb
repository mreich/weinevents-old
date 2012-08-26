class CreateCountriesRegions < ActiveRecord::Migration
  def change
    create_table :countries_regions, :id => false do |t|
      t.references :country
      t.references :region

      t.timestamps
    end
  end
end
