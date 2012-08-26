class ChangeDataTypeForStartDatetimeAndEndDatetime < ActiveRecord::Migration
  def up
    change_table :events do |t|
      t.change :start_datetime, :datetime
      t.change :end_datetime, :datetime
    end
  end

  def down
    change_table :events do |t|
      t.change :start_datetime, :datetime
      t.change :end_datetime, :datetime
    end
  end
end
