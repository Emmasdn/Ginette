class ChangeDateTypeStringIntoInteger < ActiveRecord::Migration
   def change
     change_column :bookings, :start_at, :datetime
     change_column :bookings, :finish_at, :datetime
   end
 end


