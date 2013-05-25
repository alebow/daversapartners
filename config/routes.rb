Daversapartners::Application.routes.draw do
	resources :associates
	resources :clients
	resources :searches
  
  root :to => "pages#home"
  match '/locations', to: 'pages#locations'
  match '/team', to: 'pages#team'
  match '/signup', to: 'associates#new'


end
