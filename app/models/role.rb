class Role < ActiveRecord::Base
	belongs_to :character
	belongs_to :role_type
	
	validates_presence_of :character, :role_type
	
	before_create :add_effects
	

	def add_effects
     self.role_type.effect.each {|e| self.character.add_effect(e)}
  end
	
end
