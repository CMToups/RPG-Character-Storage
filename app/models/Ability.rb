class Ability < ActiveRecord::Base
  belongs_to :character
  
  validates_uniqueness_of :name, :scope => :character_id 
  validates_inclusion_of :name, :in => [:Strength, :Dexterity, :Constitution, :Intelligence, :Wisdom, :Charisma] #Also add required to name

  validates_numericality_of :value
  
  before_validation :default_value
  
  def total_value
    temp_value = self.value
    effects.each { |effect| temp_value += effect.value }
    temp_value
  end
  
  def modifier
    (value - 10) / 2
  end
  
  def effects
    @effects
  end
  
  def add_effect( effect )
    @effects[effect.name] = effect
  end
  
  def remove_effect( effect )
    @effects.delete(effect)
  end
 
private

  def default_value
    self.value ||= 0
    @effects = effects ||= {}
  end
end
