class RenameIdsInMessages < ActiveRecord::Migration[7.0]
  def change
    rename_column :messages, :sender_id_id, :sender_id
    rename_column :messages, :receiver_id_id, :receiver_id
  end
end
