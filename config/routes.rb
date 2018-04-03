Rails.application.routes.draw do
  get 'videos/new'

  root 'videos#index'
  resources :videos
end
