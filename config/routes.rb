Rails.application.routes.draw do

  get 'terminal_stats' => 'terminal_analytics#index'
  resources :daily_yard_counts
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
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
