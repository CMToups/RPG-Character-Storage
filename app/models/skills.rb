require "../../app/models/Ability"

class Skills
  attr_accessor :skill_list



  def initialize( ability_class )
    @skill_list =
    [

    ["Acrobatics", "Str"],
    ["Appraise", "Int"],
    ["Bluff", "Str"],
    ["Climb", "Str"],
    #TODO [Craft, int]
    ["Diplomacy", "Cha"],
    ["Disable Device", "Dex"],
    ["Disguise", "Cha"],
    ["Escape Artist", "Dex"],
    ["Fly", "Dex"],
    ["Handle Animal", "Cha"],
    ["Heal", "Wis"],
    ["Intimidate", "Cha"],
    #TODO Knowledge
    ["Linguistics", "Int"],
    ["Perception", "Wis"],
    #TODO Perform
    #TODO Profession
    ["Ride", "Dex"],
    ["Sense Motive", "Wis"],
    ["Sleight of Hand", "Dex"],
    ["Spellcraft", "Int"],
    ["Stealth", "Dex"],
    ["Survival", "Wis"],
    ["Swim", "Str"],
    ["Use Magic Device", "Cha"]
    #TODO other

    ]

    @a = ability_class
  end

  def list
    skill_list.each do |skill|

      case
        when skill[1] == "Str" then @mod = "Str = " + @a.str.to_s
        when skill[1] == "Dex" then @mod = "Dex = " + @a.dex.to_s
        when skill[1] == "Con" then @mod = "Con = " + @a.con.to_s
        when skill[1] == "Int" then @mod = "Int = " + @a.int.to_s
        when skill[1] == "Wis" then @mod = "Wis = " + @a.wis.to_s
        when skill[1] == "Cha" then @mod = "Cha = " + @a.cha.to_s
      end

      p skill[0] + " " + @mod

    end

  end

end