class RemoveColumnFromRides < ActiveRecord::Migration[7.0]
  def change
    remove_column :rides, :pick_up_location, :string
  end
end
