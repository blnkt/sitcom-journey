class Scene < ActiveRecord::Base
  validates_presence_of :youtube_id
  validates_presence_of :start_time
  validates_presence_of :end_time
  validates_presence_of :user_id

  has_and_belongs_to_many :plots
  belongs_to :user

  before_create :to_seconds

  def clip
    "http://www.youtube.com/embed/#{self.youtube_id}?start=#{self.start_time}&end=#{self.end_time}&autoplay=1&enablejsapi=1"
  end

  private
  def to_seconds
    trans_time = self.start_time.split(":")
    self.start_time = (trans_time[0].to_i * 60) + trans_time[1].to_i

    trans_time = self.end_time.split(":")
    self.end_time = (trans_time[0].to_i * 60) + trans_time[1].to_i
  end
end
