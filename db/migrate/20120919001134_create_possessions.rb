class CreatePossessions < ActiveRecord::Migration
  def change
    create_table :possessions do |t|
	    
	    t.string :name
	    t.string :construction_cost
	    t.string :construction_requirements
	    t.integer :construction_caster_level
	    t.integer :weight
	    t.text :description
	    t.integer :monetary_value
	    
	    t.string :type
	    
      t.timestamps
    end
  end
end
