class AddRoomsTable < ActiveRecord::Migration
   def change
    create_table :rooms do |t|
      t.string :name
      t.boolean :status, :default => true
      t.timestamps
    end
  end
end
