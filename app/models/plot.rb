class Plot < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :show_name
  validates_presence_of :user_id

  has_and_belongs_to_many :scenes
  has_and_belongs_to_many :episodes
  belongs_to :user

  def loadCode
    api_formatted_scenes = []
    self.scenes.each do |scene|
      api_formatted_scenes << {videoId: scene.youtube_id, startSeconds: scene.start_time.to_s, endseconds: scene.end_time.to_s}
    end
    return api_formatted_scenes
  end

  def self.random_pair
    a_and_b = [Plot.where(aplot: true).limit(1).order("RANDOM()"), Plot.where(bplot: true).limit(1).order("RANDOM()")]
    return a_and_b
  end
end
