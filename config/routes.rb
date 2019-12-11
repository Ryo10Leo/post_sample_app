Rails.application.routes.draw do

  root 'static_pages#home'
  get  '/charity',    to: 'static_pages#charity'
end
