module SessionsHelper
	
	def sign_in(user)
		session[:username] = user.username
	end
	

	def current_user
		@current_user ||= User.find_by_username(session[:username]) if session[:username]
	end
	
	def log_out
		session[:username] = nil
	end
	
end
