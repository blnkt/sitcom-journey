class EpisodesController < ApplicationController
  before_action :authenticate_user!, except: [ :index, :show ]

  def index
    @episodes = Episode.all
  end

  def new
    @episode = Episode.new()
    @show_names = Plot.all.map {|plot| plot.show_name}
  end

  def create
    @episode = Episode.new(episode_params)
    @episode.user_id = current_user.id
    if @episode.save
      flash[:notice] = "episode added"
      redirect_to episode_path(@episode)
    else
      render 'new'
    end
  end

  def edit
    @plot = Plot.find(params[:plot_id])
    @episode = Episode.find(params[:id])
    render 'edit'
  end

  def update
    @plot = Plot.find(params[:plot_id])
    @episode = Episode.find(params[:id])
    if @episode.update(episode_params)
      flash[:notice] = "episode updated"
      redirect_to plot_path(@plot)
    else
      render 'edit'
    end
  end

  def show
    @episode = Episode.find(params[:id])
    @scenes = @episode.scrambler
    gon.scenes = @scenes
  end


private
  def episode_params
    params.require(:episode).permit(:user_id, :title)
  end
end

