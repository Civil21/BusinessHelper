Rails.application.routes.draw do
  root to: 'pages#index'
  devise_for :employees
  resources :employees, only: %i[index show]
  post :comment, to: 'employees#comment'
  resources :places, only: %i[index show]
  resources :clients, only: %i[index show]
  resources :events, only: %i[index show]
  resources :cars, only: %i[index show]
  resources :waybills, only: %i[index show new create]
  resources :cargos, only: %i[index show new create]

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
