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
	    
	    #Weapons
	    t.string :category
      t.string :damage
      t.boolean :lethal
      t.string :critical_range
      t.string :critical_damage
      t.string :range
      t.string :magical_name
      t.integer :magic_value
      t.string :weapon_type
      
      #Armor
      t.string :category
      t.string :slot
      t.integer :maximum_dexterity_value
      t.integer :armor_check_penalty
      t.integer :spell_failure
      t.string :speed_limitation
      t.integer :magic_value
      
      #sub type
	    t.string :type
	    
      t.timestamps
    end
  end
end
