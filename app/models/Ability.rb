class Ability < ActiveRecord::Base
  belongs_to :character
  
  validates_inclusion_of :name, :in => [:Strangth, :Dexterity, :Constitution, :Intelligence, :Wisdom, :Charisma]
end
