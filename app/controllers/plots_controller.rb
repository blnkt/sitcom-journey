class PlotsController < ApplicationController
  before_action :authenticate_user!, except: [ :index, :show ]

  def index
    @plots = Plot.all
  end

  def new
    @plots = Plot.all
    @plot = Plot.new()
  end

  def create
    @plots = Plot.all
    @plot = Plot.new(plot_params)
    if @plot.save
      flash[:notice] = "plot"
      redirect_to plots_path
    else
      flash[:notice] = "Plot cannot be blank."
      render 'new'
    end
  end

  def show
    @plot = Plot.find(params[:id])
  end

private
  def scene_params
    params.require(:plot).permit(:user_id, :title, :show_name, :season, :episode)
  end
end
