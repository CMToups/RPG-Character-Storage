class Ability < ActiveRecord::Base
  belongs_to :character
  
  has_many :effectable, :as => :effectee
  has_many :effect, :through => :effectable
  
  validates_uniqueness_of :name, :scope => :character_id 
  validates_inclusion_of :name, :in => [:Strength, :Dexterity, :Constitution, :Intelligence, :Wisdom, :Charisma] #Also add required to name

  validates_numericality_of :value
  
  before_validation :default_value
  
  def total_value
    temp_value = self.value
    effect.each do |effect| 
	    if effect.value
	    	temp_value += effect.value 
	    end
    end
    temp_value
  end
  
  def modifier
    (value - 10) / 2
  end
 
private

  def default_value
    self.value ||= 0
  end
end
