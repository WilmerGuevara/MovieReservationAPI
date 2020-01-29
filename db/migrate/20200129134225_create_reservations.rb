class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.references :movie, null: false, foreign_key: true
      t.date :reservation_day
      t.string :personal_id
      t.string :name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
