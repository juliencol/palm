class AddPriceByNightToIslands < ActiveRecord::Migration[5.2]
  def change
    add_column :islands, :price_by_night, :float
  end
end
