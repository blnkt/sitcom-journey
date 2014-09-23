class Scenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.string :address
      t.string :start
      t.string :end
      t.belongs_to :user
    end

    create_table :plots do |t|
      t.string :title
      t.string :show_name
      t.string :season
      t.string :episode
      t.belongs_to :user
    end

    create_table :plots_scenes do |t|
      t.belongs_to :plot
      t.belongs_to :scene
    end
  end
end
