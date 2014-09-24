class Episode < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :user_id

  has_and_belongs_to_many :plots
  belongs_to :user

  def aplot
    self.plots.first.scenes
  end

  def bplot
    bplot = self.plots.last.scenes
  end

  def scrambler
    self.aplot.zip(self.bplot).flatten.compact
  end

end
