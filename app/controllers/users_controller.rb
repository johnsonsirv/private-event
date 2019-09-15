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
		@current_user = User.find_by(username: session[:username])
	end
	
	
	
	private
		def user_params
			params.require(:user).permit(:fullname, :username)
		end
	
		def sign_in(user)
			session[:username] = user.username
		end

		def require_login
			redirect_to signup_path unless session[:username]
		end
end
