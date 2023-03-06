class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :ride, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :price
      t.integer :seats

      t.timestamps
    end
  end
end
