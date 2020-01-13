Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }
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
