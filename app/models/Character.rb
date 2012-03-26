class Character < ActiveRecord::Base

  validates :name, :presence => true
  
  has_one :Ability, :dependent => :destroy
  accepts_nested_attributes_for :Ability, :update_only=>true
  before_create :build_default_Ability
  
  has_many :Skill, :dependent => :destroy
  has_many :Skill_type, :through => :skill
  
  private
  def build_default_Ability
    # build default profile instance. Will use default params.
    # The foreign key to the owning Character model is set automatically
    build_Ability
    true # Always return true in callbacks as the normal 'continue' state
         # Assumes that the default_ability can **always** be created.
         # or
         # Check the validation of the profile. If it is not valid, then
         # return false from the callback. Best to use a before_validation 
         # if doing this. View code should check the errors of the child.
         # Or add the child's errors to the Character model's error array of the :base
         # error item
  end

    #TODO implement these fields, migrations needed.

    #required information
    attr_accessor :character_name, :player, :race, :character_level, #these last two might become methods
                  :hit_points, :speed, :language, :money, :experience, :feats, :specal_abilities

    #variable character info
    attr_accessor :homeland, :alignment, :deity, :size, :gender,
                  :age, :height, :weight, :hair, :eye

    #generated info
    attr_accessor :initiative, :armor_class_ac, :armor_class_touch, :armor_class_ff,
                  :fortitude, :reflex, :will, :base_attack, :spell_resistance,
                  :cmb, :cmd

end
