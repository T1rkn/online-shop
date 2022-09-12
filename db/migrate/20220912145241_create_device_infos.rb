class CreateDeviceInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :device_infos do |t|
      t.string :title, allowNull: false
      t.string :description, allowNull: false
      t.timestamps
    end
  end
end
