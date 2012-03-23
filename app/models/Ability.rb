class Ability < ActiveRecord::Base
  
  belongs_to :Character  

  validates :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma,
  :str, :dex, :con, :int, :wis, :cha, :presence => true
  
  validate after_initialize :init
    
  def init
    self.strength = 10
    self.dexterity = 10
    self.constitution = 10
    self.intelligence = 10
    self.wisdom = 10
    self.charisma = 10
  end

  def strength=( value )
    self[:strength] = value
    self.str = (value.to_i - 10) / 2
  end
  def dexterity=( value )
    self[:dexterity] = value
    self.dex = (value.to_i - 10) / 2
  end
  def constitution=( value )
    write_attribute(:constitution, value)
    self.con = (value.to_i - 10) / 2
  end
  def intelligence=( value )
    write_attribute(:intelligence, value)
    self.int = (value.to_i - 10) / 2
  end
  def wisdom=( value )
    write_attribute(:wisdom, value)
    self.wis = (value.to_i - 10) / 2
  end
  def charisma=( value )
    write_attribute(:charisma, value)
    self.cha = (value.to_i - 10) / 2
  end

  #TODO temp and adjustments

end