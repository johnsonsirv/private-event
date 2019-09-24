class Event < ApplicationRecord
	belongs_to :creator, class_name: "User"
	
	has_many :attendable_events, foreign_key: "event_attendee_id", dependent: :destroy
	has_many :attendees, through: :attendable_events, source: :event_attendee
	
	validates :name, :description, :location, :event_date, presence: true
		
end
