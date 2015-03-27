class AddRatingsTable < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
	  t.references :restaurant
	  t.string :category_name
    end
  end
end
