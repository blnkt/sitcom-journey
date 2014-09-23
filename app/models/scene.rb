class Scene < ActiveRecord::Base
  validates_presence_of :address
  validates_presence_of :start
  validates_presence_of :end
  validates_presence_of :user_id

private
  def scene_params
    params.require(:scene).permit(:user_id, :address, :start, :end)
  end
end