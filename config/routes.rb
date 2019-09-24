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

  # Adding index action in API
   namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :cars, only: [ :index ]
    end
  end



  #added address from ngrok maybe the URL not should be there
    mount StripeEvent::Engine, at: 'https://4d3265ab.ngrok.io /stripe-webhooks'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
