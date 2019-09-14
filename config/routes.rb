Rails.application.routes.draw do
  root 'users#index'
	
	get '/signup', to: 'users#new'
	
	resources :users, only: [:new, :create]
end
