Rails.application.routes.draw do
  resources :games, only: [:index, :show, :create, :destroy]
  resources :gamecards
  resources :users, only: [ :index, :show, :create]
  get "/games", to: "games:index"
  post "/login", to: "sessions#create"
  get "/me", to: "users#show"
  delete "/logout", to: "sessions#destroy"
  # patch "/gamecards/:id/cred_points", to: "gamecards#increment_credpoints"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
