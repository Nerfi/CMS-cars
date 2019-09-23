Rails.application.routes.draw do
  devise_for :users

  resources :bookings, only: [:show, :create] do
      resources :payments, only: :new
  end

  resources :users, only: :show do
    resources :bookings, only: :show
  end

  root to: 'pages#home'
  resources :cars


  #added address from ngrok
    mount StripeEvent::Engine, at: 'https://localhost:3000/stripe-webhooks'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
