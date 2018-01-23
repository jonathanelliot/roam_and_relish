Rails.application.routes.draw do
  root to: 'home#index'

  resources :story
  resources :products
  resources :stockists
end
