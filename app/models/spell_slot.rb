class SpellSlot < ActiveRecord::Base
	belongs_to :character
	belongs_to :spell, :polymorphic => true
end
