Rails.application.routes.draw do
  root 'products#index'
  resources :brands
  resources :products
  resources :locations
  resources :reviews
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  resources :users, only: [:index, :show]
end