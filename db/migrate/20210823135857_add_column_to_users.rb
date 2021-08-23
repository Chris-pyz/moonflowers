class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :nickname, :string
    add_column :users, :avatar_photo, :string
    add_column :users, :self_description, :text
  end
end
