class CreateRides < ActiveRecord::Migration[7.0]
  def change
    create_table :rides do |t|
      t.references :beach, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.datetime :date_time
      t.integer :price
      t.string :pick_up_location
      t.integer :seats

      t.timestamps
    end
  end
end
