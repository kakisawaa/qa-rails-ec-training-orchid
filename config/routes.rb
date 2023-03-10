Rails.application.routes.draw do
  root "static_pages#home"
  get 'login', to:'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users, only: %i(show edit update)
  resources :products, only: %i(show index)
  resources :orders, only: %i(show)
end
