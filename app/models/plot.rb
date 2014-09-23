class Plot < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :show_name
  validates_presence_of :user_id

private
  def scene_params
    params.require(:plot).permit(:user_id, :title, :show_name, :season, :episode)
  end
end
