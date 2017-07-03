class AddNameToDirvers < ActiveRecord::Migration[5.1]
  def change
    add_column :drivers, :name, :string
    add_column :drivers, :phone, :integer
    add_column :drivers, :balance, :float, default: 0
    add_column :drivers, :licence, :string
    add_column :drivers, :fare, :float
    add_column :drivers, :rating, :float
  end
end
