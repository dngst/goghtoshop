Rails.application.routes.draw do
  devise_for :users, skip: [:registrations]
  namespace :admin do
      resources :orders
      resources :products

      root to: "orders#index"
    end
  resources :products, only: [:index, :show]
  resource :checkout, only: :show
  resource :payments, only: :show

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "products#index"
end
