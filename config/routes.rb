Rails.application.routes.draw do
  devise_for :users

  root to: "episodes#index"
  resources :episodes
  resources :users, only: :show
  resources :scenes, only: [:show]
  resources :plots do
    resources :scenes, except: :show
  end
end
