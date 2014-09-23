class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :scenes, :address, :youtube_id
  end
end
