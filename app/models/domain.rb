class Domain < ActiveRecord::Base

	has_many :spell_slots, :as => :spell
	
end
