class Ability < ActiveRecord::Base
  belongs_to :character
  
  validates_uniqueness_of :name, :scope => :character_id 
  validates_inclusion_of :name, :in => [:Strangth, :Dexterity, :Constitution, :Intelligence, :Wisdom, :Charisma] #Also adds name to must be set list 

end
