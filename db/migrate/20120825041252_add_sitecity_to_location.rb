class AddSitecityToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :sitecity_id, :integer

  end
end
