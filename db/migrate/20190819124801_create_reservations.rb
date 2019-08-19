class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :user, foreign_key: true
      t.references :island, foreign_key: true
      t.string :starting_date
      t.string :ending_date

      t.timestamps
    end
  end
end
