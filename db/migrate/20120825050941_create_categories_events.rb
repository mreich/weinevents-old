class CreateCategoriesEvents < ActiveRecord::Migration
  def change
    create_table :categories_events, :id => false do |t|
      t.references :event
      t.references :category

      t.timestamps
    end
  end
end
