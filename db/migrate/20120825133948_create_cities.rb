class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.integer :status_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
