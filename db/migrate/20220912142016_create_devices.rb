class CreateDevices < ActiveRecord::Migration[6.1]
  def change
    create_table :devices do |t|
      t.string :name, unique: true, null: false
      t.integer :price, null: false
      t.integer :rating, default: 0
      t.string :img, null: false
      t.references :type, foreign_key: true
      t.references :brand, foreign_key: true
      t.timestamps
    end
  end
end
