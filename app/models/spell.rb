class Spell < ActiveRecord::Base

	has_many :spell_slot
	
end
