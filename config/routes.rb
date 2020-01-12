Rails.application.routes.draw do
  root 'stocks#index'
  resources :stocks do
    collection do
      get 'zaiko'
    end
  end
  resources :categories
  resources :deliveries
  resources :customers
end
