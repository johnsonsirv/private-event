require 'rails_helper'

RSpec.describe Event, type: :model do
  before do
    @event = create(:event)
  end
	
	context "validations" do
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
	end
	
end
