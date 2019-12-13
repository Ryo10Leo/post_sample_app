Rails.application.routes.draw do

  get '/product',     to: 'products#index'
  resources :products, only: [:new,:create,:edit,:update,:destroy]

  root 'static_pages#home'
  get  '/charity',    to: 'static_pages#charity'
end