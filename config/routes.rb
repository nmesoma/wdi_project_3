Rails.application.routes.draw do

  resources :brands
  root 'products#index'
  resources :products
  resources :reviews


  resources :reviews
  resources :products
  root 'products#index'
  # get 'review#show'
  # get 'review', to: :show
  


end
