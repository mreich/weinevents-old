class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.integer :status_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
