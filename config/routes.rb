Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'home#index'

  get 'signup', to: 'users#new'
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  resources :users, except: [:new]

  resources :genres, only: %i[index show]
  resources :vgames, only: %i[index show]

  # get 'checkout/index', to: 'checkout#index', as: :checkout_index
  # post 'checkout/create', to: 'checkout#create', as: :checkout_create
  # post 'checkout/destroy', to: 'checkout#destroy', as: :checkout_destroy

  resources :checkout, only: %i[index create destroy]
  get 'checkout/purchase', to: 'checkout#purchase', as: :checkout_purchase

  # get '/cart', to: 'order_items#index'
  # resources :order_items, path: '/cart/items'

  # get 'cart/checkout', to: 'orders#new', as: :checkout
  # patch '/cart/checkout', to: 'orders#create'
end
