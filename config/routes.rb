Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :rides, only: %i[index new show create edit update destroy] do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: %i[show update] do
    resources :reviews, only: %i[new create]
    resources :payments, only: :new
  end

  get '/beach/:id', to: 'rides#beach', as: "beach"
  get '/location/:id', to: 'rides#location', as: "location"
  get '/dashboard', to: 'pages#dashboard'
  get '/profile', to: 'pages#profile'
  get '/bookings/:id/confirmation', to: 'bookings#booking_confirmation', as: "confirmation"
  # get '/bookings/:id/reviews/new', to: 'reviews#new', as: "new_review"
  # post '/bookings/:id/reviews', to: 'reviews#create'

  resources :beaches, only: [] do
    member do
      post :favorite
    end
  end
end
