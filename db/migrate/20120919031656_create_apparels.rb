class CreateApparels < ActiveRecord::Migration
  def up
    create_table :apparels do |t|
    	t.string :slot
	  end
    create_citier_view(Apparel)
  end
  
  def down 
  	drop_citier_view(Apparel)
    drop_table :apparels 
  end
end
