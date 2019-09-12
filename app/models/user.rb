class User < ApplicationRecord
	has_many :created_events, class_name: "Event", 
						foreign_key: "creator_id", dependent: :destroy
	
	has_many :attendable_events, foreign_key: "attended_event_id", dependent: :destroy
	has_many :attended_events, through: :attendable_events
end
