class CreateLodgings < ActiveRecord::Migration
  def up
    create_table :lodgings do |t|
    	t.string :location
	  end
    create_citier_view(Lodging)
  end
  
  def down 
  	drop_citier_view(Lodging)
    drop_table :lodgings 
  end
end
