class RenameStartedAtToStartsAtInEvents < ActiveRecord::Migration[8.1]
  def change
    rename_column :events, :started_at, :starts_at
  end
end
