class User < ApplicationRecord
	before_save :downcase_username
	
	has_many :created_events, class_name: "Event", 
						foreign_key: "creator_id", dependent: :destroy
	
	has_many :attendable_events, foreign_key: "event_attendee_id", dependent: :destroy
	has_many :attended_events, through: :attendable_events
	
	validates :fullname, presence: {message: "Enter your name or username" }, 
												length: {maximum: 50, message: "Name too Long - max 50 chars"}
	validates :username, presence: {message: "Enter your name or username" },
											length: {in: 3..16, message: "Username too short or long, 3 - 16 chars"},
											uniqueness: true
	
	
	private
	def downcase_username
		self.username = username.downcase
	end
end
