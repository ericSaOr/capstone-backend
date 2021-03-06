Rails.application.routes.draw do
  resources :games
  resources :gamecards
  resources :users, only: [ :index, :show, :create]
  get "/games", to: "games#index"
  get"/games/:id", to: "games#destroy"
  post "/games", to: "games#create"
  get "/show/:id", to: "games#show"
  post "/login", to: "sessions#create"
  get "/me", to: "users#show"
  get "/users/:id", to: "users#show"
  delete "/logout", to: "sessions#destroy"
  get"/gamecards", to: "gamecards#index"
  patch "/gamecards/:id", to: "gamecards#update"
  patch "/users/:id/cred_points", to: "users#increment_credpoints"
  # patch "/gamecards/:user_id/", to: "gamecards#increment_credpoints"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
