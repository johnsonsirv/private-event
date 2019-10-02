Rails.application.routes.draw do
  root 'users#index'
	
	get '/signup', to: 'users#new'
	get '/users/home', to: 'users#show'
	get '/login', to: 'sessions#new'
	post '/login', to: 'sessions#create'
	delete '/logout', to: 'sessions#destroy'
	delete '/cancel_subscription', to: 'events#cancel_subscription'
	post '/subscribe_to_event', to: 'events#subscribe_to_event'
	
	resources :users, only: [:new, :create]
	resources :events, only: [:new, :create, :index, :show]
end
