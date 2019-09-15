class UsersController < ApplicationController
	
	def index
		
	end
	
	def new
		@user = User.new
	end
	
	def create
		@user = User.new(user_params)
		 if @user.save
			 # log_in @user
			 redirect_to users_home_path
		else
			render :new
		end
	end
	
	def show
		
	end
	
	private
		def user_params
			params.require(:user).permit(:fullname, :username)
		end
end
