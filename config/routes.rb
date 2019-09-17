Rails.application.routes.draw do
  root 'users#index'
	
	get '/signup', to: 'users#new'
	get '/users/home', to: 'users#show'
	get '/login', to: 'sessions#new'
	post '/login', to: 'sessions#create'
	
	resources :users, only: [:new, :create]
end
