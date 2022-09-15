class CreateTypeBrands < ActiveRecord::Migration[6.1]
  def change
    create_table :type_brands do |t|
      t.references :type, foreign_key: true
      t.references :brand, foreign_key: true
      t.timestamps
    end
  end
end
