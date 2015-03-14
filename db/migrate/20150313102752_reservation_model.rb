class ReservationModel < ActiveRecord::Migration
  
  def change
    create_table :reservations do |t|
      t.string :lastname
	  t.datetime :date
	  t.integer :restaurant_id
    end
  end
end
