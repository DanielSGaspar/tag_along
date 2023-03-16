class RemoveSenderReceiverFromMessages < ActiveRecord::Migration[7.0]
  def change
    remove_column :messages, :receiver_id
    rename_column :messages, :sender_id, :user_id
  end
end
