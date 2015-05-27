Rails.application.routes.draw do
  resources :reviews
  root 'products#index'
  resources :products
end
