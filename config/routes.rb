Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  get 'articles/index'

  get 'styles/index'

  get 'sessions/new'

  resources :products

  resources :styles

  resources :articles

  root 'static_pages#home'
  get  '/home',    to: 'static_pages#home'
  get  '/charity',    to: 'static_pages#charity'

  get      '/login',  to: 'sessions#new'
  post     '/login',  to: 'sessions#create'
  delete   '/logout', to: 'sessions#destroy'
end