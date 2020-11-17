class RenameTitleToName < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :title, :name
  end
end
