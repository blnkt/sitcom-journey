Rails.application.routes.draw do
  root to: "episodes#index"

  resources :episodes
  resources :users, only: :show
end
