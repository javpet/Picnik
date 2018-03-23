Rails.application.routes.draw do

  # Active admin URLS
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # User can sign up multiple times
  resources :users

  # User can only make one session
  resource :session

  # The people can see multiple items
  resources :items

  get "about", to: "pages#about"

  root "pages#home"

end
