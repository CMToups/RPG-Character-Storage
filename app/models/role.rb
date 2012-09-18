class Role < ActiveRecord::Base
	belongs_to :character
	belongs_to :role_type
	
	after_save :send_effects_to_character
	
	validates_presence_of :character, :role_type
	
	private 
	
  def send_effects_to_character
     self.role_type.effect.each {|e| self.character.add_effect(e)}
  end
end
