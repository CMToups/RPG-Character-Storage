class SpellList < ActiveRecord::Base

	has_and_belongs_to_many :spell_type
	belongs_to :character
	
end
