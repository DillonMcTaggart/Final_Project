Rails.application.routes.draw do
  root to: 'genres#index'

  resources :genres, only: [:index] do
    resources :vgames, only: [:index]
  end
end
