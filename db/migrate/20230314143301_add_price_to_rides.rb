class AddPriceToRides < ActiveRecord::Migration[7.0]
  def change
    add_monetize :rides, :price, currency: { present: false }
  end
end
