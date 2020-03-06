Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :users, only: [:edit, :update, :show]
  namespace :posts do
    resources :searches, only: :index
  end
  
  resources :posts, only: [:index, :new, :create, :show, :destroy]

end