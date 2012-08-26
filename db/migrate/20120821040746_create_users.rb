class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :status_id
      t.string :email
      t.string :hashed_password

      t.timestamps
    end
  end
end
