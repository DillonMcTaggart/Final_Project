Rails.application.routes.draw do
  root to: 'genres#index'

  resources :genres, only: [:index] do
    resources :vgames, only: [:index]
  end

  get '/cart', to: 'order_items#index'
  resources :order_items, path: 'cart/items'
end
