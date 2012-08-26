class Character < ActiveRecord::Base
  attr_accessor :base_attack_bonus, :experience_points, :name, :money

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

end