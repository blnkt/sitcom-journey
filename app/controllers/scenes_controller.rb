class ScenesController < ApplicationController
  before_action :authenticate_user!, except: [ :index, :show ]

  def index
    @scenes = Scene.all
  end

  def new
    @scenes = Scene.all
    @scene = Scene.new()
  end

  def create
    @scenes = Scene.all
    @scene = Scene.new(scene_params)
    if @scene.save
      flash[:notice] = "scene"
      redirect_to scenes_path
    else
      flash[:notice] = "Scene cannot be blank."
      render 'new'
    end
  end

  def show
    @scene = Scene.find(params[:id])
  end


private
  def scene_params
    params.require(:scene).permit(:user_id, :address, :start, :end)
  end
end

