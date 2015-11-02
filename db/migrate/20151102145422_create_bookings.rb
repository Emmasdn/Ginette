class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :user, index: true, foreign_key: true
      t.references :annonce, index: true, foreign_key: true
      t.boolean :accepted
      t.datetime :start_at
      t.datetime :finish_at
      t.text :message

      t.timestamps null: false
    end
  end
end
