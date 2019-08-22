class AddPhototwoToIslands < ActiveRecord::Migration[5.2]
  def change
    add_column :islands, :phototwo, :string
  end
end
