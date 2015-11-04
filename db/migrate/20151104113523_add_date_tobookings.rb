class AddDateTobookings < ActiveRecord::Migration
  def change
    add_column :bookings, :date, :date
  end
end
