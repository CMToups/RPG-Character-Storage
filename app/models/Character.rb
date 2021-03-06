class Character < ActiveRecord::Base
  
  before_validation :default_values
  before_create :stub_out_character 
  
  belongs_to :player
  
  belongs_to :race


  has_one :aspect, :dependent => :destroy
  has_one :background, :dependent => :destroy
  
  has_many :ability, :autosave => true, :dependent => :destroy
  
  has_many :role, :dependent => :destroy #:include => consider this as a replacment for has_many :through
  has_many :role_type, :through => :role

  has_many :achievement
  has_many :feat, :through => :achievement

  has_and_belongs_to_many :possession
  
  has_many :skill, :dependent => :destroy
  has_many :skill_type, :through => :skill
  
  has_many :spell_slot, :dependent => :destroy
  has_many :spell, :through => :spell_slot

  has_many :effectable, :after_add => :add_effect
  has_many :effect, :through => :effectable

  accepts_nested_attributes_for :ability, :background, :aspect, :feat, :skill, :allow_destroy => true

  validates_presence_of :name
  
  validates_numericality_of :total_hit_points, :experience_points, :money 
  
  attr_accessible :name, :experience_points, :total_hit_points, :money, :ability_attributes, :background_attributes, :aspect_attributes, :feat_attributes, :skill_attributes, :race_id, :role_type_ids
  
  def add_effect(effect)
  	klass = effect.target_klass
  	instance = effect.target_instance
  	if klass && instance
  		if klass == "Ability"   
	  		klass_instance = klass.to_s.constantize.where(:name => instance, :character_id => self.id).first 
	  	elsif klass == "Skill"
	  		skill_type = SkillType.where(:name => instance).first
	  		klass_instance = Skill.where(:skill_type_id => skill_type.id, :character_id => self.id).first
	  	end
	  	Effectable.create(:effectee => klass_instance, :effect => effect, :character_id => self.id) if klass_instance
  	end
  end
    
  def race=(sType)
     super
     save
     sType.effect.each {|e| add_effect(e)} if sType.effect
  end
  
private

  def default_values
    self.total_hit_points ||= 0
    self.experience_points ||= 0
    self.money ||= 0
  end
  
  def stub_out_character
  	add_abilities
  	add_background
  	add_aspect
  	true
  end

  def add_abilities
    self.ability.build(:name => "Strength", :value => 10)
    self.ability.build(:name => "Dexterity", :value => 10)
    self.ability.build(:name => "Constitution", :value => 10)
    self.ability.build(:name => "Intelligence", :value => 10)
    self.ability.build(:name => "Wisdom", :value => 10)
    self.ability.build(:name => "Charisma", :value => 10)
  end

  def add_background
    self.build_background
  end

  def add_aspect
    self.build_aspect
  end
  
end