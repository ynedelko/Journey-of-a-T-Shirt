Rails.application.routes.draw do

  root :to => 'home#index'

  resources :countries
  resources :home
  resources :visitors
end
