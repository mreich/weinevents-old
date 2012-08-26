class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :status_id
      t.references :user
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.integer :type_id
      t.string :hear_about

      t.timestamps
    end
    add_index :profiles, :user_id
  end
end
