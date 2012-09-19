class CreateMeterials < ActiveRecord::Migration
  def up
    create_table :meterials do |t|
    	t.string :usage
    	t.string :duration
	  end
    create_citier_view(Meterial)
  end
  
  def down 
  	drop_citier_view(Meterial)
    drop_table :meterials 
  end
end
