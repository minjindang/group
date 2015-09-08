Rails.application.routes.draw do
  root 'groups#index'
  resources :groups
  resources :groups do
    resources :posts
  end
end
