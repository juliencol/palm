class AddPhotothreeToIslands < ActiveRecord::Migration[5.2]
  def change
    add_column :islands, :photothree, :string
  end
end
