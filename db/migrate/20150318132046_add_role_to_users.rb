class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_column :reservations, :role, :string

  end
end
