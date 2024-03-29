Rails.application.routes.draw do
  devise_for :users
  root to: "pages#dashboard"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :rides, only: %i[index new show create edit update destroy] do
    resources :bookings, only: %i[create]
    resources :chatrooms, only: :create
  end

  resources :chatrooms, only: %i[index show] do
    resources :messages, only: %i[create]
  end

  resources :bookings, only: %i[show update] do
    resources :reviews, only: %i[new create]
    resources :payments, only: :new
  end

  get '/beach/:id', to: 'rides#beach', as: "beach"
  get '/location/:id', to: 'rides#location', as: "location"
  get '/dashboard', to: 'pages#dashboard'
  get '/landing', to: 'pages#home'
  get '/profile', to: 'pages#profile'
  get '/bookings/:id/confirmation', to: 'bookings#booking_confirmation', as: "confirmation"

  mount StripeEvent::Engine, at: '/stripe-webhooks'

  resources :beaches, only: [] do
    member do
      get :favorite
    end
  end
end
