class AddWebsiteAndSitecityIdToOrganizer < ActiveRecord::Migration
  def change
    add_column :organizers, :website, :string

    add_column :organizers, :city_id, :integer

  end
end
