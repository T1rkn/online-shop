class AddAdditionalColumnToDevices < ActiveRecord::Migration[6.1]
  def change
    add_column :devices, :typeId, :integer
    add_column :devices, :brandId, :integer
  end
end
