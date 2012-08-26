class Character < ActiveRecord::Base
  attr_accessor :base_attack_bonus, :experience_points, :name, :money
  
  after_initialize :add_abilities_to_character
  
=begin  
  belongs_to :player
  belongs_to :race
  
  has_one :aspect, :dependent => :destroy
  has_one :background, :dependent => :destroy
=end
  has_many :ability, :dependent => :destroy
=begin
  has_many :character_class, :dependent => :destroy
  has_many :feat, :dependent => :destroy
  has_many :possession, :dependent => :destroy
  has_many :skill, :dependent => :destroy
  has_many :spell, :dependent => :destroy
=end

private


  def add_abilities_to_character
    self.ability.build(:name => :Strangth, :value => 10)
    self.ability.build(:name => :Dexterity, :value => 10)
    self.ability.build(:name => :Constitution, :value => 10)
    self.ability.build(:name => :Intelligence, :value => 10)
    self.ability.build(:name => :Wisdom, :value => 10)
    self.ability.build(:name => :Charisma, :value => 10)
  end

end