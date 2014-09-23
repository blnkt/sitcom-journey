class ScenesController < ApplicationController
  before_action :authenticate_user!, except: [ :index, :show ]

  def index
    @scenes = Scene.all
  end

  def new
    @scene = Scene.new()
  end

  def create
    @scene = Scene.new(scene_params)
    @scene.user_id = current_user.id
    if @scene.save
      flash[:notice] = "scene added"
      redirect_to scenes_path
    else
      render 'new'
    end
  end

  def edit
    @scene = Scene.find(params[:id])
    render 'edit'
  end

  def update
    @scene = Scene.find(params[:id])
    if @scene.update(scene_params)
      flash[:notice] = "scene updated"
      redirect_to scenes_path
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

