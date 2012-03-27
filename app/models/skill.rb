class Skill < ActiveRecord::Base

  
  belongs_to :Character
  belongs_to :Skill_type
  #has_one :Ability, :through => :Character
  
  validate before_create :init
  validate before_save :update_mod, :set_total
  
  validates :skill_type_id, :character_id, :presence => true
  
  def update_mod
      @st = SkillType.where(:id => self.skill_type_id).first
      @a = Ability.where(:id => self.character_id).first 
      @mod_key = @st.modifier_type
      p @st
      p @a
      p @mod_key
      mod_value_will_change!
      self.mod_value = @a.send(@mod_key)
  end
  
  private
  
  def init
    self.rank ||= 0
    self.misc ||= 0
    :set_total
  end
  
  def set_total
    @value = (self.rank.to_i + self.misc.to_i + self.mod_value.to_i)
    total_will_change! if @value
    write_attribute(:total, @value )
  end
end