class CreateDeviceInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :device_infos do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.references :device, foreign_key: true
      t.timestamps
    end
  end
end
