Rails.application.routes.draw do
  resources :games, only: [:index, :show, :create, :destroy]
  resources :gamecards, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:show, :create]
  patch "/gamecards/:id/cred_points", to: "gamecards#increment_credpoints"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
