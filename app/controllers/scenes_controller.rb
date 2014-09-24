class ScenesController < ApplicationController
  before_action :authenticate_user!, except: [ :index, :show ]

  def index
    @scenes = Scene.all
  end

  def new
    @plot = Plot.find(params[:plot_id])
    @scene = Scene.new()
  end

  def create
    @plot = Plot.find(params[:plot_id])
    @scene = Scene.new(scene_params)
    @scene.user_id = current_user.id
    if @scene.save
      @plot.scenes << @scene
      flash[:notice] = "scene added"
      redirect_to plot_path(@plot)
    else
      render 'new'
    end
  end

  def edit
    @plot = Plot.find(params[:plot_id])
    @scene = Scene.find(params[:id])
    render 'edit'
  end

  def update
    @plot = Plot.find(params[:plot_id])
    @scene = Scene.find(params[:id])
    if @scene.update(scene_params)
      flash[:notice] = "scene updated"
      redirect_to plot_path(@plot)
    else
      render 'edit'
    end
  end

  def show
    @scene = Scene.find(params[:id])
  end


private
  def scene_params
    params.require(:scene).permit(:user_id, :youtube_id, :start_time, :end_time)
  end
end

