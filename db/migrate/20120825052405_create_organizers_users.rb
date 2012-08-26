class CreateOrganizersUsers < ActiveRecord::Migration
  def change
    create_table :organizers_users do |t|
      t.integer :organizer_id
      t.integer :user_id
      t.integer :role_id

      t.timestamps
    end
  end
end
