Rails.application.routes.draw do
  root to: 'home#index'

  resources :story
  resources :products
end
