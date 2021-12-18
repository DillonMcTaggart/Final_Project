Rails.application.routes.draw do
  root to: "home#index"
  resources :customers, only: %i[index show]
  resources :videogames, only: %i[index show]
end
