class CreateAttendedEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :attended_events do |t|
			t.belongs_to :attended_event
			t.belongs_to :event_attendee
			
      t.timestamps
    end
  end
end
