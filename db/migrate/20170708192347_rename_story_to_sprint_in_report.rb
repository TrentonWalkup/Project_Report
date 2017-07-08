class RenameStoryToSprintInReport < ActiveRecord::Migration[5.1]
  def change
    rename_column :reports, :story, :sprint

  end
end
