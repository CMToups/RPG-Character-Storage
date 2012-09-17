class Effectable < ActiveRecord::Base
	belongs_to :effect
	belongs_to :effectee, :polymorphic => true
	belongs_to :character
end
