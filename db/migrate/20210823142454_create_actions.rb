class CreateActions < ActiveRecord::Migration[6.0]
  def change
    create_table :actions do |t|
      t.float :longitude
      t.float :latitude
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
