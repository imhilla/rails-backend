class RenameBodyToModel < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :body, :model
  end
end
