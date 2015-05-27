Rails.application.routes.draw do
  resources :reviews
  resources :products
  root 'products#index'
  # get 'review#show'
  # get 'review', to: :show
  

end
