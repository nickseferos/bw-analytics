Rails.application.routes.draw do

  resources :crane_operators
  resources :voyages do
    resources :port_calls do
      resources :shifts do
        resources :counts
      end
    end
  end

  resources :vessels
  resources :steamshiplines
  resources :terminals
  root 'dashboard#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
