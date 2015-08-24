class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :property, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.datetime :check_in
      t.datetime :check_out
      t.float :total_price

      t.timestamps null: false
    end
  end
end
