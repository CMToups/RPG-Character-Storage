class CreatePossessions < ActiveRecord::Migration
  def change
    create_table :possessions do |t|
	    
	    t.string :name
	    
	    t.string :type
	    
      t.timestamps
    end
  end
end
