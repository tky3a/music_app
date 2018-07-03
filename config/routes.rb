Rails.application.routes.draw do
  #例外でcollbaksする場合は、omniauth_collbacksコントローラーを使う
  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks"}
  resources :users, only: [:index, :show]
  # get 'users/index'
  # get 'users/show'

  root 'videos#index'
  resources :categories

  # get '/categories/:category_id/:id', to: 'categories#show'

  #video内のネストされたリソース としてcommentsを作成


  resources :videos do
    resources :comments
  end

  resources :videos do
    member do
      post "favorites", to: "favorites#create"
    end
  end

  resources :favorites, only: [:destroy]

end
