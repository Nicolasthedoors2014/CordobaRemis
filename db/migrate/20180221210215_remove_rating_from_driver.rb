class RemoveRatingFromDriver < ActiveRecord::Migration[5.1]
  def change
    remove_column :drivers, :rating, :float
  end
end
