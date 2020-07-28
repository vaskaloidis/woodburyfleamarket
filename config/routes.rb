Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations]
  as :user do
	  get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
	  put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end

  get 'pages/home', to: 'high_voltage/pages#show', id: 'home'
	get 'pages/about', to: 'high_voltage/pages#show', id: 'about'
	get 'pages/directions', to: 'high_voltage/pages#show', id: 'directions'
	get 'pages/gus', to: 'high_voltage/pages#show', id: 'gus'
	get 'admin', to: 'contents#index', id: 'admin_home'
	authenticate :user do
		resources :contents
	end
end
