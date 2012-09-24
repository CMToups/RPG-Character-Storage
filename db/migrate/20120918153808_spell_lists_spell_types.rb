class SpellListsSpellTypes < ActiveRecord::Migration
	def change
		create_table :spell_lists_spell_types, :id => false do |t|
		  t.references :spell_list, :null => false
		  t.references :spell_type, :null => false
		end

		#add_index(:spell_lists_spell_types, [:spell_list_id, :spell_type_id]) #when running mysql add this back in!
	end
end
