Rails.application.routes.draw do
  root 'home#index'
  
  resources :lessons, only: [:show]
  resources :languages, only: [:index, :show]
  
  get '/login' => 'sessions#new', name: 'login_path'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
  get '/register' => 'users#new', name: 'register_path'
  post '/users' => 'users#create'
end
