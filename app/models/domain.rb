class Domain < ActiveRecord::Base

	has_many :spell_slots, :as => :magic
	
end
