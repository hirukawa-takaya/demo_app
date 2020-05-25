Rails.application.routes.draw do
  root 'homes#top'
  get 'homes/about', to:'homes#about'
  
  resources :users
end
