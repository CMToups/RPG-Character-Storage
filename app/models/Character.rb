require "../../app/models/Ability"

class Character

  #required information
  attr_accessor :character_name, :player, :race, :character_level #these last two might become methods

  #variable character info
  attr_accessor :homeland, :alignment, :deity, :size, :gender,
                :age, :height, :weight, :hair, :eye

end