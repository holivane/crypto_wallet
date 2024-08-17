class RenameNametoDescription < ActiveRecord::Migration[5.2]
  def change
    rename_column :mining_types, :name, :description
  end
end
