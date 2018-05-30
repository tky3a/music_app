Rails.application.routes.draw do
  #例外でcollbaksする場合は、omniauth_collbacksコントローラーを使う
  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks"}

  root 'videos#index'

  # get '/signup', to: 'users#new'

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
  resources :videos
  # resources :users


end
