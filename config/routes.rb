Rails.application.routes.draw do


  resources :products



  root 'static_pages#home'
  get  '/charity',    to: 'static_pages#charity'
end