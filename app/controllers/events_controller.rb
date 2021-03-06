class EventsController < ApplicationController
	before_action :require_login
	
	def index
		@events = Event.all
	end
	
	def new
		@event = Event.new
	end
	
	def create
		@event = current_user.created_events.new(events_param)
		if @event.save
			AttendableEvent.new(attended_event: @event, event_attendee: current_user).save
			flash[:message] = "Event created successfuly"
			redirect_to users_home_path
		else
			render :new
		end
	end
	
	def show
		@event_details = Event.find_by(id: params[:id])
	end
	
	
	def subscribe_to_event
		# byebug
		event = Event.find_by(id: params[:id])
		subscribe_user_to event
	end
	
	def cancel_subscription
		# byebug
		AttendableEvent.where(attended_event_id: params[:id]).
			find_by(event_attendee: current_user).destroy
		redirect_to events_path
	end

	
	private
	def events_param
			params.require(:event).
				permit(:name, :description, :location, :event_date)
	end
	
	def subscribe_user_to(event)
		events_attendable = AttendableEvent.
				new(attended_event: event, event_attendee: current_user)
		if events_attendable.save
			flash[:message] = "New event added to list"
			redirect_to users_home_path
		else
			redirect_to events_path
		end
	end
	

end
