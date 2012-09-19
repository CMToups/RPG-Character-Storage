class CreateServices < ActiveRecord::Migration
  def up
    create_table :services do |t|
    	t.string :duration
	  end
    create_citier_view(Service)
  end
  
  def down 
  	drop_citier_view(Service)
    drop_table :services 
  end
end
