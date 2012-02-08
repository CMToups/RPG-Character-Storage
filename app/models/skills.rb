class Skills
  attr_accessor :skill_list

  def initialize
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


  end

  def list
    skill_list.each do |skill|

      case
        when skill[1] == "Str" then @mod = "Str = #{$str}"
        when skill[1] == "Dex" then @mod = "Dex = #{$dex}"
        when skill[1] == "Con" then @mod = "Con = #{$con}"
        when skill[1] == "Int" then @mod = "Int = #{$int}"
        when skill[1] == "Wis" then @mod = "Wis = #{$wis}"
        when skill[1] == "Cha" then @mod = "Cha = #{$cha}"
      end

      p skill[0] + " " + @mod

    end



 end

end