class Episode < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :user_id

  has_and_belongs_to_many :plots
  belongs_to :user

  def aplot
    self.plots.first.scenes
  end

  def bplot
    self.plots.last.scenes
  end

  def scrambler
    self.aplot.zip(self.bplot).flatten.compact
  end

  def plotter
    a_and_b = Plot.random_pair
    unless Episode.all_plot_pairs.include?(a_and_b)
      self.update(title: "#{a_and_b.first.first.title} + #{a_and_b.last.first.title}")
      a_and_b.each { |plot| self.plots << plot }
    else
      self.plotter
    end
  end

  def self.all_plot_pairs
    Episode.all.map { |episode| episode.plots.map { |plot| plot.id } }
  end
end
