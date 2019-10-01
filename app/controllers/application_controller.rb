class ApplicationController < ActionController::Base
	include SessionsHelper
	include EventsHelper
	
	def is_my_event?(event)
		event.creator == current_user
	end
	
end
