class RenameTableAttendedEvents < ActiveRecord::Migration[5.2]
  def change
		rename_table :attended_events, :attendable_events
  end
end
