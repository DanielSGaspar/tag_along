class AddCityToBeaches < ActiveRecord::Migration[7.0]
  def change
    add_column :beaches, :city, :string
  end
end
