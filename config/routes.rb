Rails.application.routes.draw do
  get 'reviews/index'

  resources :reviews

  root 'reviews#index'
end
