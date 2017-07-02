class AddNameToPassengers < ActiveRecord::Migration[5.1]
  def change
    add_column :passengers, :name, :string
    add_column :passengers, :phone, :integer
    add_column :passengers, :balance, :float, default: 0
    add_column :passengers, :miles, :float, default: 0
  end
end
