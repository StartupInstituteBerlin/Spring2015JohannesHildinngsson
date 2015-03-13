class AddEmailToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :email, :integer
  end
end
