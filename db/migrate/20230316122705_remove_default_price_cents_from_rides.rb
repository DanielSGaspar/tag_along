class RemoveDefaultPriceCentsFromRides < ActiveRecord::Migration[7.0]
  def change
    change_column_default :rides, :price_cents, from: 0, to: nil
  end
end
