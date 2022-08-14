Rails.application.routes.draw do
  resources :notes
  resources :users
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
end


