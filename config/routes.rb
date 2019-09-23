Rails.application.routes.draw do
  devise_for :users
  resources :bookings, only: [:show, :create] do
      resources :payments, only: :new
  end

  root to: 'pages#home'
  resources :cars
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
