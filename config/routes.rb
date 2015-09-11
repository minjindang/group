Rails.application.routes.draw do
  namespace :account do
    resources :groups
    resources :posts
  end
  
  devise_for :users
  root 'groups#index'
  resources :groups
  resources :groups do
    member do
      post :join
      post :quit
    end
    resources :posts
  end
end
