class CreateEventsTags < ActiveRecord::Migration
  def change
    create_table :events_tags, :id => false do |t|
      t.references :event
      t.references :tag

      t.timestamps
    end
  end
end
