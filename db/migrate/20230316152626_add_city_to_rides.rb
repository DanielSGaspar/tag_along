class AddCityToRides < ActiveRecord::Migration[7.0]
  def change
    add_column :rides, :city, :string
  end
end
