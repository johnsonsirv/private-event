Rails.application.routes.draw do
  root 'users#index'
	
	get '/signup', to: 'users#new'
	get '/users/home', to: 'users#show'
	
	resources :users, only: [:new, :create]
end
