Rails.application.routes.draw do
  resources :brands
  root 'products#index'
  resources :products
  resources :reviews


end
