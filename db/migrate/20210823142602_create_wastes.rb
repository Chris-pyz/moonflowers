class CreateWastes < ActiveRecord::Migration[6.0]
  def change
    create_table :wastes do |t|
      t.integer :quantity
      t.string :material
      t.references :action, null: false, foreign_key: true

      t.timestamps
    end
  end
end
