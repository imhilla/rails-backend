class RenameServicesToPrice < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :services, :price
  end
end
