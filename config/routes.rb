Rails.application.routes.draw do
  root 'homes#top'
  get 'homes/about', to:'homes#about'
  
  resources :users
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :topics
  
  get '/favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
  
end
