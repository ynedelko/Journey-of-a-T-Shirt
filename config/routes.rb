Rails.application.routes.draw do
   root :to => 'home#index'

  resources :countries
  resources :home
end
