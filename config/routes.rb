Directory::Application.routes.draw do

  match "pages/home", :to =>"pages#home"
  
  # P
  resources :positions
  
  # T
  resources :teammings
  resources :teams
  
  # U
  resources :users
  
  root :to => 'pages#home'
end
