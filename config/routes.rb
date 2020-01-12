Rails.application.routes.draw do
  root 'top#index'
  resources :stocks do
    collection do
      get 'zaiko'
    end
  end
  resources :categories
  resources :deliveries
  resources :customers
  resources :top, only: [:index]
end
