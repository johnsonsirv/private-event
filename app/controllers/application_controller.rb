class ApplicationController < ActionController::Base
	include SessionsHelper
	include EventsHelper
	
	
	def require_login
		redirect_to signup_path unless current_user
	end
end
