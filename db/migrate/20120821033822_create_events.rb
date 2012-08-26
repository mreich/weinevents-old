class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :status_id
      t.string :name
      t.string :description
      t.string :start_datetime
      t.string :end_datetime
      t.string :cost
      t.string :website
      t.references :organizer

      t.timestamps
    end
    add_index :events, :organizer_id
  end
end
