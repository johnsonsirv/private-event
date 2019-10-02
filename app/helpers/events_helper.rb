module EventsHelper
	
	def is_attending?(event)
		current_user.attended_events.
			exists?(event.id)
	end
end
