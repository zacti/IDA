class Furniture < ActiveRecord::Migration[5.1]
  def change
  	create_table :furnitures do |t|
    	t.integer :user_id, index: true
  		t.string :name, null:false
  		t.string :size
  		t.string :created
  		t.string :description
  	end
  end
end
