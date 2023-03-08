Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  resources :rides, only: %i[index new show create update destroy]
  get '/beach/:id', to: 'rides#beach', as: "beach"
  get '/location/:id', to: 'rides#location', as: "location"
  get '/dashboard', to: 'pages#dashboard'

end
