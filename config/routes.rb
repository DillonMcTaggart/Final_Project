Rails.application.routes.draw do
  get 'customers/index'
  get 'customers/show'
  resources :customers, only: %i[index show]
  resources :videogames, only: %i[index show]
end
