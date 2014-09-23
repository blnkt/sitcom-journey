Rails.application.routes.draw do
  devise_for :users

  root to: "scenes#index"
  resources :episodes
  resources :users, only: :show
  # resources :plots do
    resources :scenes
  # end
end

#                   Prefix Verb   URI Pattern                               Controller#Action
#         new_user_session GET    /users/sign_in(.:format)                  devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                  devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                 devise/sessions#destroy
#            user_password POST   /users/password(.:format)                 devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)             devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)            devise/passwords#edit
#                          PATCH  /users/password(.:format)                 devise/passwords#update
#                          PUT    /users/password(.:format)                 devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                   devise/registrations#cancel
#        user_registration POST   /users(.:format)                          devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)                  devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                     devise/registrations#edit
#                          PATCH  /users(.:format)                          devise/registrations#update
#                          PUT    /users(.:format)                          devise/registrations#update
#                          DELETE /users(.:format)                          devise/registrations#destroy
#                     root GET    /                                         scenes#index
#                 episodes GET    /episodes(.:format)                       episodes#index
#                          POST   /episodes(.:format)                       episodes#create
#              new_episode GET    /episodes/new(.:format)                   episodes#new
#             edit_episode GET    /episodes/:id/edit(.:format)              episodes#edit
#                  episode GET    /episodes/:id(.:format)                   episodes#show
#                          PATCH  /episodes/:id(.:format)                   episodes#update
#                          PUT    /episodes/:id(.:format)                   episodes#update
#                          DELETE /episodes/:id(.:format)                   episodes#destroy
#                     user GET    /users/:id(.:format)                      users#show
#              plot_scenes GET    /plots/:plot_id/scenes(.:format)          scenes#index
#                          POST   /plots/:plot_id/scenes(.:format)          scenes#create
#           new_plot_scene GET    /plots/:plot_id/scenes/new(.:format)      scenes#new
#          edit_plot_scene GET    /plots/:plot_id/scenes/:id/edit(.:format) scenes#edit
#               plot_scene GET    /plots/:plot_id/scenes/:id(.:format)      scenes#show
#                          PATCH  /plots/:plot_id/scenes/:id(.:format)      scenes#update
#                          PUT    /plots/:plot_id/scenes/:id(.:format)      scenes#update
#                          DELETE /plots/:plot_id/scenes/:id(.:format)      scenes#destroy
#                    plots GET    /plots(.:format)                          plots#index
#                          POST   /plots(.:format)                          plots#create
#                 new_plot GET    /plots/new(.:format)                      plots#new
#                edit_plot GET    /plots/:id/edit(.:format)                 plots#edit
#                     plot GET    /plots/:id(.:format)                      plots#show
#                          PATCH  /plots/:id(.:format)                      plots#update
#                          PUT    /plots/:id(.:format)                      plots#update
#                          DELETE /plots/:id(.:format)                      plots#destroy
