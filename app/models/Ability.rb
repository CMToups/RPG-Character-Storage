class Ability < ActiveRecord::Base
  belongs_to :character
  
  validates_uniqueness_of :name, :scope => :character_id 
  validates_inclusion_of :name, :in => [:Strangth, :Dexterity, :Constitution, :Intelligence, :Wisdom, :Charisma] #Also add required to name

  validates_numericality_of :value
  
  before_validation :default_value
  
  def modifier
    (value - 10) / 2
  end
  
private

  def default_value
    self.value ||= 0
  end
  
end