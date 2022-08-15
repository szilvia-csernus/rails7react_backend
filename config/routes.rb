Rails.application.routes.draw do
  resources :notes
  # below is just for testing! use 'resource :users, only: [:create]'
  resources :users
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
end


