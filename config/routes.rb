Rails.application.routes.draw do
  root to: 'cars#index'

  resources :car_listings, only: [:new, :create]
end
