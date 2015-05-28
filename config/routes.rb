Rails.application.routes.draw do
  resources :locations
  # devise_for :users
  resources :brands
  root 'products#index'
  resources :products
  resources :reviews
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  resources :users, only: [:index, :show]


end
