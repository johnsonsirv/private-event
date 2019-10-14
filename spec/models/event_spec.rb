require 'rails_helper'

RSpec.describe Event, type: :model do
  
	context "validations" do
		before do
    	@event = create(:event)
  	end
		it "is valid with valid attributes" do
			expect(@event).to be_valid
		end
		it "is not valid without an event name" do
			event2 = build(:event, name: nil)
			expect(event2).to_not be_valid
		end
		it "is not valid without an event description" do
			event2 = build(:event, description: nil)
			expect(event2).to_not be_valid
		end
		it "is not valid without an event location" do
			event2 = build(:event, location: nil)
			expect(event2).to_not be_valid
		end
		it "is not valid without an event date" do
			event2 = build(:event, event_date: nil)
			expect(event2).to_not be_valid
		end
		it "is not valid with past event date" do
			event2 = build(:event, event_date: Date.yesterday)
			expect(event2).to_not be_valid
		end
	end
	
	context "Associations" do
		it { should belong_to(:creator).class_name('User') }
		
		it { should have_many(:attendable_events).
				dependent(:destroy).
				with_foreign_key('attended_event_id') }
		
		it { should have_many(:attendees).
				through(:attendable_events).
				source(:event_attendee) }
	end
	
	
end
