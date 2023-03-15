class RemovePriceFromRides < ActiveRecord::Migration[7.0]
  def change
    remove_column :rides, :price, :integer
  end
end
