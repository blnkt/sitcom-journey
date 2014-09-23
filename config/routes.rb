Rails.application.routes.draw do
  root to: "episodes#index"

  resources :episodes
  resources :users, only: :show do
    resources :plots do
      resources :scenes
    end
  end
end


#               Prefix Verb   URI Pattern                                              Controller#Action
#                 root GET    /                                                        episodes#index
#             episodes GET    /episodes(.:format)                                      episodes#index
#                      POST   /episodes(.:format)                                      episodes#create
#          new_episode GET    /episodes/new(.:format)                                  episodes#new
#         edit_episode GET    /episodes/:id/edit(.:format)                             episodes#edit
#              episode GET    /episodes/:id(.:format)                                  episodes#show
#                      PATCH  /episodes/:id(.:format)                                  episodes#update
#                      PUT    /episodes/:id(.:format)                                  episodes#update
#                      DELETE /episodes/:id(.:format)                                  episodes#destroy
#     user_plot_scenes GET    /users/:user_id/plots/:plot_id/scenes(.:format)          scenes#index
#                      POST   /users/:user_id/plots/:plot_id/scenes(.:format)          scenes#create
#  new_user_plot_scene GET    /users/:user_id/plots/:plot_id/scenes/new(.:format)      scenes#new
# edit_user_plot_scene GET    /users/:user_id/plots/:plot_id/scenes/:id/edit(.:format) scenes#edit
#      user_plot_scene GET    /users/:user_id/plots/:plot_id/scenes/:id(.:format)      scenes#show
#                      PATCH  /users/:user_id/plots/:plot_id/scenes/:id(.:format)      scenes#update
#                      PUT    /users/:user_id/plots/:plot_id/scenes/:id(.:format)      scenes#update
#                      DELETE /users/:user_id/plots/:plot_id/scenes/:id(.:format)      scenes#destroy
#           user_plots GET    /users/:user_id/plots(.:format)                          plots#index
#                      POST   /users/:user_id/plots(.:format)                          plots#create
#        new_user_plot GET    /users/:user_id/plots/new(.:format)                      plots#new
#       edit_user_plot GET    /users/:user_id/plots/:id/edit(.:format)                 plots#edit
#            user_plot GET    /users/:user_id/plots/:id(.:format)                      plots#show
#                      PATCH  /users/:user_id/plots/:id(.:format)                      plots#update
#                      PUT    /users/:user_id/plots/:id(.:format)                      plots#update
#                      DELETE /users/:user_id/plots/:id(.:format)                      plots#destroy
#                 user GET    /users/:id(.:format)                                     users#show
