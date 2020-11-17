class RenameObjectivesToReviews < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :objectives, :reviews
  end
end
