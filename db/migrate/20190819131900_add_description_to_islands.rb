class AddDescriptionToIslands < ActiveRecord::Migration[5.2]
  def change
    add_column :islands, :description, :string
  end
end
