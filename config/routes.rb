Rails.application.routes.draw do

  get 'reviews/index'

  resources :reviews

  root 'reviews#index'


  get 'restaurants/index'

  resources :restaurants

  root 'restaurants#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
