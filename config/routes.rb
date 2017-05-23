Rails.application.routes.draw do
  root 'home#index'
  
  get '/lessons/:language', to: 'lessons#index', name: 'lessons_path'
  
  get '/login' => 'sessions#new', name: 'login_path'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
  get '/register' => 'users#new', name: 'register_path'
  post '/users' => 'users#create'
end
