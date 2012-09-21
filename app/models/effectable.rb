class Effectable < ActiveRecord::Base
	belongs_to :effect
	belongs_to :effectee, :polymorphic => true
	belongs_to :character
	
	validates_presence_of :effect, :effectee, :character
	
end
