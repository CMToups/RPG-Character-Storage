class Ability < ActiveRecord::Base
  
  belongs_to :Character

  validates :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma,
  :str, :dex, :con, :int, :wis, :cha, :presence => true
  
  validate after_initialize :init
    
  def init
    set_strength(10)
    set_dexterity(10)
    set_constitution(10)
    set_intelligence(10)
    set_wisdom(10)
    set_charisma(10)

  end

  def set_strength( value )
    self.strength = value
    self.str = (value - 10) / 2
  end
  def set_dexterity( value )
    self.dexterity = value
    self.dex = (value - 10) / 2
  end
  def set_constitution( value )
    self.constitution = value
    self.con = (value - 10) / 2
  end
  def set_intelligence( value )
    self.intelligence = value
    self.int = (value - 10) / 2
  end
  def set_wisdom( value )
    self.wisdom = value
    self.wis = (value - 10) / 2
  end
  def set_charisma( value )
    self.charisma = value
    self.cha = (value - 10) / 2
  end

  #TODO temp and adjustments

end