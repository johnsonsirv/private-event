module EventsHelper
	
	def is_attending?(event)
		current_user.attended_events.
			find(event.id).nil?
	end
end
