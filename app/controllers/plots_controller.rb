class PlotsController < ApplicationController
  before_action :authenticate_user!, except: [ :index, :show ]

  def index
    @plots = Plot.all
  end

  def new
    @plot = Plot.new()
  end

  def create
    @plot = Plot.new(plot_params)
    @plot.user_id = current_user.id
    if @plot.save
      flash[:notice] = "plot"
      redirect_to plots_path(@plot)
    else
      render 'new'
    end
  end

  def show
    @plot = Plot.find(params[:id])
    @scenes = @plot.scenes
  end

private
  def plot_params
    params.require(:plot).permit(:user_id, :title, :show_name, :season, :episode)
  end
end
