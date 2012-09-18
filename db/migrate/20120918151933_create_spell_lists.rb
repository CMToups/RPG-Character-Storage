class CreateSpellLists < ActiveRecord::Migration
  def change
    create_table :spell_lists do |t|
	    
	    t.integer :character_id 
	    
      t.timestamps
    end
  end
end
