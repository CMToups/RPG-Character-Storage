class CreateConsumables < ActiveRecord::Migration
  def up
    create_table :consumables do |t|
    	t.string :expiration
	  end
    create_citier_view(Consumable)
  end
  
  def down 
  	drop_citier_view(Consumable)
    drop_table :consumables 
  end
end
