Rails.application.routes.draw do
  resources :favorites
  resource :schedule
  resources :shopping_carts
  resources :tickets
  resources :gigs
  resources :concerts
  resources :bands
  resources :venues
  devise_for :users
  root(to: "schedules#show")
end
