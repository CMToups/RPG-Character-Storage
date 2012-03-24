class Ability < ActiveRecord::Base
  
  belongs_to :Character  

  validates :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma,
  :str, :dex, :con, :int, :wis, :cha, :presence => true
  
  validate after_initialize :init
  before_save :set_mods
  
  private  
  def init
    self.strength ||= 10 
    self.dexterity ||= 10
    self.constitution ||= 10
    self.intelligence ||= 10
    self.wisdom ||= 10
    self.charisma ||= 10
    :set_mods
  end
  
  #this MUST change but custom setters had massive issues.
  def set_mods
    self.str = (self.strength - 10) / 2

    self.dex = (self.dexterity - 10) / 2

    self.con = (self.constitution - 10) / 2

    self.int = (self.intelligence - 10) / 2

    self.wis = (self.wisdom - 10) / 2

    self.cha = (self.charisma - 10) / 2
  end
  
  #TODO temp and adjustments

end