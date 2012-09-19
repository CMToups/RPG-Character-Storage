class CreateTools < ActiveRecord::Migration
  def up
    create_table :tools do |t|
    	t.string :function
	  end
    create_citier_view(Tool)
  end
  
  def down 
  	drop_citier_view(Tool)
    drop_table :tools 
  end
end
