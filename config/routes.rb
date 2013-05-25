Daversapartners::Application.routes.draw do
	resources :associates
	resources :clients
	resources :searches
	resources :sessions, only: [:new, :create, :destroy]
  
  root :to => "pages#home"
  match '/locations', to: 'pages#locations'
  match '/team', to: 'pages#team'
  match '/signup', to: 'associates#new'
  match '/signin', to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete


end
