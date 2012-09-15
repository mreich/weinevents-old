class ChangeDataTypeForStartDatetimeAndEndDatetime < ActiveRecord::Migration
  def up
    change_table :events do |t|
      remove_column :start_datetime
      remove_column :end_datetime
      add_column :start_datetime, :datetime
       add_column :end_datetime, :datetime
    end
  end

  def down
    change_table :events do |t|
        remove_column :start_datetime, :datetime
        remove_column :end_datetime, :datetime
        add_column :start_datetime, :string
        add_column :end_datetime, :string
       
    end
  end
end
