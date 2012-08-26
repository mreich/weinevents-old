class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :status_id
      t.string :name

      t.timestamps
    end
  end
end
