Rails.application.routes.draw do
  #例外でcollbaksする場合は、omniauth_collbacksコントローラーを使う
  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks"}
  resources :users, only: [:index, :show]
  # get 'users/index'
  # get 'users/show'
  # get '/categories/:category_id/:id', to: 'categories#show'

  root 'videos#index'
  resources :categories
  get 'search', to: 'videos#search'

  #video内のネストされたリソース としてcommentsを作成
  resources :videos do
    resources :comments
  end

  #お気に入り
  resources :favorites, only: [:destroy]
  resources :videos do
    member do
      post "favorites", to: "favorites#create"
    end
  end

end
