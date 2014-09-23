class RenameMoreColumns < ActiveRecord::Migration
  def change
    rename_column :scenes, :start, :start_time
    rename_column :scenes, :end, :end_time
  end
end
