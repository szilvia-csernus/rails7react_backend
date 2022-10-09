Rails.application.routes.draw do
  resources :notes, only: [:show, :update, :destroy]

  resource :user, only: [:create, :update, :destroy]
  resources :users, only: :show do
    resources :notes, only: [:index, :create]
  end

  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
end


