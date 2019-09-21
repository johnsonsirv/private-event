class EventsController < ApplicationController
	
	def new
		@event = Event.new
	end
	
	def create
		event = current_user.created_events.build(events_param)
		if event.save
			flash[:message] = "Event created succesfuly"
			redirect_to users_home_path
		else
			render :new
		end
	end
	
	private
	def events_param
			params.require(:event).permit(:name, :description, :location, :event_date)
	end
end
