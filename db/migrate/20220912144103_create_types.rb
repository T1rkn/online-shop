class CreateTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :types do |t|
      t.string :name, unique: true, allowNull: false
      t.timestamps
    end
  end
end
