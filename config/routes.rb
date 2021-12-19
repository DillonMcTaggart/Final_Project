Rails.application.routes.draw do
  root to: 'genres#index'

  resources :genres, only: [:index] do
    resources :vgames, only: [:index]
  end

  get '/cart', to: 'order_items#index'
  resources :order_items, path: '/cart/items'

  get 'cart/checkout', to: 'orders#new', as: :checkout
  patch '/cart/checkout', to: 'orders#create'
end
