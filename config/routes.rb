Rails.application.routes.draw do

  root "pages#show", page: "home"

  resources :countries
  resources :visitors
  get "/pages/:page" => "pages#show", as: 'page'
end
