Rails.application.routes.draw do
  root to: 'pages#index'
  devise_for :employees
  resources :employees, only: %i[index show]
  resources :places, only: %i[index show]
  resources :clients, only: %i[index show]
  resources :events, only: %i[index show]
  resources :cars, only: %i[index show]

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
