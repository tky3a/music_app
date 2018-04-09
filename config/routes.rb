Rails.application.routes.draw do
  get '/alterna', to: 'categories#alterna'
  #
  get '/emo', to: 'categories#emo'
  #
  get '/gt_rock', to: 'categories#gt_rock'
  #
  get '/post_rock', to: 'categories#post_rock'
  #
  get '/rock', to: 'categories#rock'
  #
  get '/progre', to:'categories#progre'

  # resources :categories

  get 'videos/new'

  root 'videos#index'
  resources :videos


end
