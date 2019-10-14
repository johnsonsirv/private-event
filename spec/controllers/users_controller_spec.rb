require 'rails_helper'

RSpec.describe UsersController, type: :controller do
	it { should use_before_action(:require_login) }
	
	it { should route(:get, '/signup').
			to(action: :new) }
	
	it { should route(:get, '/users/home').
			to(action: :show) }
	
end
