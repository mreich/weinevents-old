class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.integer :status_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
