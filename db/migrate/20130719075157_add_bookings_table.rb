class AddBookingsTable < ActiveRecord::Migration
  def  change
      create_table :bookings do |t|
      t.string :time
      t.string :date
      t.string :description
      t.integer :user_id
      t.integer :room_id
      t.timestamps
    end
  end
end
