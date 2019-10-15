Rails.application.routes.draw do
  resources :port_calls
  resources :voyages
  resources :vessels
  resources :steamshiplines
  resources :terminals
  root 'dashboard#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
