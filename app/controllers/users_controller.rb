class UsersController < ApplicationController
	before_action :require_login, only: [:show]
	
	def index
		
	end
	
	def new
		@user = User.new
	end
	
	def create
		@user = User.new(user_params)
		 if @user.save
			 sign_in @user
			 redirect_to users_home_path
		else
			render :new
		end
	end
	
	def show
		@created_events = current_user.created_events
		@upcoming_events = current_user.attended_events.upcoming
		@past_events = current_user.attended_events.past
	end
	
	
	
	private
		def user_params
			params.require(:user).permit(:fullname, :username)
		end
	
end
