class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :status_id
      t.string :name
      t.string :street_1
      t.string :street_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone

      t.timestamps
    end
  end
end
