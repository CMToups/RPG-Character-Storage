class CreateTransports < ActiveRecord::Migration
  def up
    create_table :transports do |t|
    	t.string :transportation_method
	  end
    create_citier_view(Transport)
  end
  
  def down 
  	drop_citier_view(Transport)
    drop_table :transports 
  end
end
