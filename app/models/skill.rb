class Skill < ActiveRecord::Base

  
  belongs_to :character
  belongs_to :skill_type
  
  validate before_create :init
  validate after_save :set_mod, :set_total
  
  validates :skill_type_id, :character_id, :presence => true
  
  private
  
  def init
    self.rank ||= 0
    self.misc ||= 0
    :set_total
  end
  
  def set_total
    if self.mod_value
      @value = self.rank + self.misc + self.mod_value
    else
      @value = self.rank + self.misc
    end
    total_will_change! if @value
    write_attribute(:total, @value )
  end
  
  def set_mod
      @st = SkillType.where(:id => self.skill_type_id).first
      @a = Ability.where(:character_id => self.character_id).first
      @mod_key = @st.modifier_type
      p @st
      p @a
      p @mod_key
      mod_value_will_change!
      self.mod_value = @a.send(@mod_key)
  end
end