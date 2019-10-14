class Event < ApplicationRecord
	belongs_to :creator, class_name: "User"
	
	has_many :attendable_events, foreign_key: "attended_event_id", dependent: :destroy
	has_many :attendees, through: :attendable_events, source: :event_attendee
	
	validates :name, :description, :location, :event_date, presence: true
	validate :event_date_cannot_be_in_the_past 	
	
	
	scope :upcoming, -> {where("event_date > ?", Date.today )}
	scope :past, -> {where("event_date < ?", Date.today )}
	
	
	private
	def event_date_cannot_be_in_the_past
		if event_date && event_date < Date.today
			errors.add(:event_date, "can't be in the past")
		end
	end
	
end
