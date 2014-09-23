Rails.application.routes.draw do
  root to: "scenes#index"

  resources :episodes
  # resources :users, only: :show do
    resources :plots do
      resources :scenes
    end
  # end
end

#          Prefix Verb   URI Pattern                               Controller#Action
#            root GET    /                                         scenes#index
#        episodes GET    /episodes(.:format)                       episodes#index
#                 POST   /episodes(.:format)                       episodes#create
#     new_episode GET    /episodes/new(.:format)                   episodes#new
#    edit_episode GET    /episodes/:id/edit(.:format)              episodes#edit
#         episode GET    /episodes/:id(.:format)                   episodes#show
#                 PATCH  /episodes/:id(.:format)                   episodes#update
#                 PUT    /episodes/:id(.:format)                   episodes#update
#                 DELETE /episodes/:id(.:format)                   episodes#destroy
#     plot_scenes GET    /plots/:plot_id/scenes(.:format)          scenes#index
#                 POST   /plots/:plot_id/scenes(.:format)          scenes#create
#  new_plot_scene GET    /plots/:plot_id/scenes/new(.:format)      scenes#new
# edit_plot_scene GET    /plots/:plot_id/scenes/:id/edit(.:format) scenes#edit
#      plot_scene GET    /plots/:plot_id/scenes/:id(.:format)      scenes#show
#                 PATCH  /plots/:plot_id/scenes/:id(.:format)      scenes#update
#                 PUT    /plots/:plot_id/scenes/:id(.:format)      scenes#update
#                 DELETE /plots/:plot_id/scenes/:id(.:format)      scenes#destroy
#           plots GET    /plots(.:format)                          plots#index
#                 POST   /plots(.:format)                          plots#create
#        new_plot GET    /plots/new(.:format)                      plots#new
#       edit_plot GET    /plots/:id/edit(.:format)                 plots#edit
#            plot GET    /plots/:id(.:format)                      plots#show
#                 PATCH  /plots/:id(.:format)                      plots#update
#                 PUT    /plots/:id(.:format)                      plots#update
#                 DELETE /plots/:id(.:format)                      plots#destroy
