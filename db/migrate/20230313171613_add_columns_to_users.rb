class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :address, :string
    add_column :users, :bio, :text
    add_column :users, :car, :string
  end
end
