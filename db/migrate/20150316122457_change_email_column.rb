class ChangeEmailColumn < ActiveRecord::Migration
  def change
  
    change_column :reservations, :email, :string

  end
end
