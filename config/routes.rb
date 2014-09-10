Sevstyle::Application.routes.draw do
  # get "users/new"
  resources :users
  resources :sessions, only: [:new, :create, :destroy]


  root  'users#show'
  match '/user',    to: 'users#show',           via: 'get'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'




  
end
