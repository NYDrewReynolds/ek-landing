Rails.application.routes.draw do

  root 'customers#new'

  resources :customers
end
