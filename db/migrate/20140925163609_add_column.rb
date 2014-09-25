class AddColumn < ActiveRecord::Migration
  def change
    add_column :plots, :aplot, :boolean
    add_column :plots, :bplot, :boolean
  end
end
