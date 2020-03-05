Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :users, only: [:edit, :update, :show]
  namespace :posts do
    resources :searches, only: :index
  end
  resources :posts
    resources :likes, only: [:create, :destroy]
   
end