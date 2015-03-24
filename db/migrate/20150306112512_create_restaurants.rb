class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :name
	  t.text :description
	  t.string :phonenumber
	  t.text :address
      t.timestamps null: false
    end
  end
end
