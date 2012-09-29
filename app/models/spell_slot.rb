class SpellSlot < ActiveRecord::Base
	belongs_to :character
	belongs_to :magic, :polymorphic => true
end
