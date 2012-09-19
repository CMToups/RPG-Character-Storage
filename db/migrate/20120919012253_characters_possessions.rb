class CharactersPossessions < ActiveRecord::Migration
  def change
  	create_table :characters_possessions, :id => false do |t|
		  t.references :character, :null => false
		  t.references :possession, :null => false
	  end
	  
	  add_index(:characters_possessions, [:character_id, :possession_id])
  end
end
