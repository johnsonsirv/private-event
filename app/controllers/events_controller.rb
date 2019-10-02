class EventsController < ApplicationController
	before_action :require_login
	
	def index
		@events = Event.all
	end
	
	def new
		@event = Event.new
	end
	
	def create
		event = current_user.created_events.build(events_param)
		event.save
		events_attendable = AttendableEvent.new(attended_event: event, event_attendee: current_user)
		if events_attendable.save
			flash[:message] = "Event created successfuly"
			redirect_to users_home_path
		else
			render :new
		end
	end
	
	def show
		@event_details = Event.find_by(id: params[:id])
	end
	
	def cancel_subscription
		
	end
	
		
	def subscribe_to_event
		# byebug
		event = Event.find_by(id: params[:id])
		events_attendable = AttendableEvent.
				new(attended_event: event, event_attendee: current_user)
		if events_attendable.save
			flash[:message] = "New event added to list"
			redirect_to users_home_path
		else
			redirect_to events_path
		end
	end
	
	private
	def events_param
			params.require(:event).permit(:name, :description, :location, :event_date)
	end
	
	
end
