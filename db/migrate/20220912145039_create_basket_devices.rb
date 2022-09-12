class CreateBasketDevices < ActiveRecord::Migration[6.1]
  def change
    create_table :basket_devices do |t|

      t.timestamps
    end
  end
end
