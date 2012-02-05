require "../../app/models/Ability"
require "../../app/models/Skills"
class Character
  def initialize(game)
    case
      when game == "Pathfinder"
        @a = Ability.new
        @s = Skills.new(@a)
    end
  end

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

  #testing code
  @a = Ability.new
  @s = Skills.new(@a)
  #end testing code


  @a.set_strength(17)
  @a.set_dexterity(14)
  @a.set_constitution(9)
  @a.set_intelligence(11)
  @a.set_wisdom(9)
  @a.set_charisma(18)

  @s.list

end