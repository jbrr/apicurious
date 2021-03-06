Rails.application.routes.draw do
  root "welcome#index"
  get "auth/twitter", as: "login"
  get "auth/twitter/callback", to: "sessions#create"
  get "logout", to: "sessions#destroy"
  patch "tweet", to: "users#update"
  post "favorite", to: "users#favorite"
end
