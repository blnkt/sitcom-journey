class CreateEpisodesPlots < ActiveRecord::Migration
  def change
    create_table :episodes_plots do |t|
      t.belongs_to :episode
      t.belongs_to :plot
    end
  end
end
