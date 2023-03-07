Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :locations, only: %i[show] do
    resources :rides, only: %i[new create]
  end

  resources :rides, only: %i[index update destroy]
end
