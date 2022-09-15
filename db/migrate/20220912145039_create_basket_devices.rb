class CreateBasketDevices < ActiveRecord::Migration[6.1]
  def change
    create_table :basket_devices do |t|
      t.references :basket, foreign_key: true
      t.references :device, foreign_key: true
      t.timestamps
    end
  end
end
