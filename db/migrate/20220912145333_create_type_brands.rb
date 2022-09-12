class CreateTypeBrands < ActiveRecord::Migration[6.1]
  def change
    create_table :type_brands do |t|

      t.timestamps
    end
  end
end
