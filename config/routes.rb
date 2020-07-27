Rails.application.routes.draw do
  devise_for :users
	get 'pages/home', to: 'high_voltage/pages#show', id: 'home'
	get 'pages/about', to: 'high_voltage/pages#show', id: 'about'
	get 'pages/directions', to: 'high_voltage/pages#show', id: 'directions'
	get 'pages/gus', to: 'high_voltage/pages#show', id: 'gus'
	authenticate :user do
		resources :contents
	end
end
