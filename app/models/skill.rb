class Skill < ActiveRecord::Base
  belongs_to :character
  belongs_to :skill_type
  
  has_many :effectable, :as => :effectee
  has_many :effect, :through => :effectable, :uniq => true
	
	has_and_belongs_to_many :role_type
  
  
  accepts_nested_attributes_for :skill_type
  
  validates_presence_of :character_id, :skill_type_id
  validates :skill_type_id, :uniqueness => { :scope => :character_id }
  
  before_save :default_value
  
  def total 
  	total = self.rank
  	total += self.character.ability.where(:name => self.skill_type.ability_type).first.modifier
  	effect.each do |effect| 
	    if effect.value
	    	total += effect.value 
	    end
    end
  	total
  end
  
  private 
  
  def default_value
  	self.rank = self.rank || 0
  end
  
end
