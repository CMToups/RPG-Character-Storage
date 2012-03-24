class Ability < ActiveRecord::Base
  
  belongs_to :Character  
  validate before_create :init
  
  validates :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma,
  :str, :dex, :con, :int, :wis, :cha, :presence => true
  
  def strength=(value)
    strength_will_change!
    write_attribute(:strength, value )
    str_will_change!
    self.str = (self.strength.to_i - 10) / 2
  end

  def dexterity=(value)
    dexterity_will_change!
    write_attribute(:dexterity, value )
    str_will_change!
    self.dex = (self.dexterity.to_i - 10) / 2
  end
  
  def constitution=(value)
    constitution_will_change!
    write_attribute(:constitution, value )
    str_will_change!
    self.con = (self.constitution.to_i - 10) / 2
  end
  
  def intelligence=(value)
    intelligence_will_change!
    write_attribute(:intelligence, value )
    str_will_change!
    self.int = (self.intelligence.to_i - 10) / 2
  end
  
  def wisdom=(value)
    wisdom_will_change!
    write_attribute(:wisdom, value )
    str_will_change!
    self.wis = (self.wisdom.to_i - 10) / 2
  end

  def charisma=(value)
    charisma_will_change!
    write_attribute(:charisma, value )
    str_will_change!
    self.cha = (self.charisma.to_i - 10) / 2
  end
  
  private  
  def init
    self.strength ||= 10 
    self.dexterity ||= 10
    self.constitution ||= 10
    self.intelligence ||= 10
    self.wisdom ||= 10
    self.charisma ||= 10
  end
  
  #TODO temp and adjustments

end