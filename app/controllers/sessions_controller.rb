class SessionsController < ApplicationController
	
	def new
		
	end
	
	def create
		user = User.find_by_username(params[:session][:username].downcase)
		if user
			sign_in user
			redirect_to users_home_path
		else
			flash.now[:login_error] = "Username not Found"
			render :new
		end
	end
	
	def destroy
		log_out
		redirect_to login_path
	end
end
