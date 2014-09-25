class RandomEpisodesController < ApplicationController
  before_action :authenticate_user!

  def create
      @episode = Episode.new(user_id: current_user.id)
      @episode.plotter
    if @episode.save
      flash[:notice] = "episode added"
      redirect_to episode_path(@episode)
    else
      render 'new'
    end
  end

end
