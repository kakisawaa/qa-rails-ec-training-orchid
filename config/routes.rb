Rails.application.routes.draw do
  resources :users, only: %i(show edit update)
  resources :products, only: %i(show)
end
