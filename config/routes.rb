Daversapartners::Application.routes.draw do
  get "searches/show"

  get "searches/index"

	resources :associates
	resources :clients
	resources :searches
  resources :groups
	resources :sessions, only: [:new, :create, :destroy]
  
  root :to => "pages#home"
  match '/locations', to: 'pages#locations'
  match '/team', to: 'pages#team'
  match '/signup', to: 'associates#new'
  match '/signin', to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete


end
