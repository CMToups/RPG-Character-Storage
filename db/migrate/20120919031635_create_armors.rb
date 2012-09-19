class CreateArmors < ActiveRecord::Migration
  def up
    create_table :armors do |t|
      t.string :category
      t.string :slot
      t.integer :maximum_dexterity_value
      t.integer :armor_check_penalty
      t.integer :spell_failure
      t.string :speed_limitation
      t.integer :magic_value
    end
    create_citier_view(Armor)
  end
  
  def down 
  	drop_citier_view(Armor)
    drop_table :armors 
  end
end
