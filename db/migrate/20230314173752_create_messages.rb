class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.references :chatroom, null: false, foreign_key: true
      t.references :sender_id, null: false, foreign_key: { to_table: :users }
      t.references :receiver_id, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
