module EventsHelper
	
	def is_attending?(event)
		current_user.attended_events.
			exists?(event.id)
	end
	
	def is_my_event?(event)
		current_user.created_events.
			exists?(event.id)
	end
	
	def past_event?(event)
		event.event_date < Date.today
	end
	
	def should_subscribe?(event)
		is_my_event?(event) || past_event?(event)
	end
	
end
