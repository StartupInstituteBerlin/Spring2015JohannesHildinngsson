class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
	  t.string :category_name
    end
    
    add_column :restaurants, :category_id, :integer
  end
end





