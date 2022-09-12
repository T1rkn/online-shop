class CreateDevices < ActiveRecord::Migration[6.1]
  def change
    create_table :devices do |t|
      t.string :name, unique: true, allowNull: false
      t.integer :price, allowNull: false
      t.integer :rating, default: 0
      t.string :img, allowNull: false
      t.timestamps
    end
  end
end
