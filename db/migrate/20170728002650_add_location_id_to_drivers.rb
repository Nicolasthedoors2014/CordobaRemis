class AddLocationIdToDrivers < ActiveRecord::Migration[5.1]
  def change
    add_reference :drivers, :location, foreign_key: true
  end
end
