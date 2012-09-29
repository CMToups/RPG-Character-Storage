class Spell < ActiveRecord::Base

	has_many :spell_slot, :as => :magic

end
