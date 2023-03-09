class AddColumnToRide < ActiveRecord::Migration[7.0]
  def change
    add_column :rides, :address, :string
  end
end
