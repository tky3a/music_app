Rails.application.routes.draw do
  get 'videos/new'
  get '/rock', to: 'videos#rock'
  
  root 'videos#index'
  resources :videos


end
