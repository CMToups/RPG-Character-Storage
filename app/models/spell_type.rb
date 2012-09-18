class SpellType < ActiveRecord::Base

	has_and_belongs_to_many :spell_list
	
end
