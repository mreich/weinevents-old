class RenameCityToAddresscity < ActiveRecord::Migration
  def up
    rename_column :organizers, :city, :addresscity
    rename_column :locations, :city, :addresscity
  end

  def down
    rename_column :organizers, :city, :addresscity
    rename_column :locations, :city, :addresscity
  end
end
