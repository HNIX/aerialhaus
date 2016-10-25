class RenameTypeToCategory < ActiveRecord::Migration[5.0]
  def change
    rename_column :projects, :type, :category
  end
end
