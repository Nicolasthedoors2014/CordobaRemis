class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.integer :one, default: 0
      t.integer :two, default: 0
      t.integer :three, default: 0
      t.integer :four, default: 0
      t.integer :five, default: 0
      t.belongs_to :driver, index: { unique: true }, foreign_key: true
      t.timestamps
    end
  end
end
