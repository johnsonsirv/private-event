require 'rails_helper'

RSpec.describe EventsController, type: :controller do
	it { should use_before_action(:require_login) }
	
	it { should route(:post, '/subscribe_to_event').
			to(action: :subscribe_to_event) }
	
	it { should route(:delete, '/cancel_subscription').
			to(action: :cancel_subscription) }
end
