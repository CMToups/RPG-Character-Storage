class CreateGoods < ActiveRecord::Migration
  def up
    create_table :goods do |t|
    	t.string :category
	  end
    create_citier_view(Good)
  end
  
  def down 
  	drop_citier_view(Good)
    drop_table :goods 
  end
end
