class Ability
  attr_reader :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma

  def initialize

    set_strength(10)
    set_dexterity(10)
    set_constitution(10)
    set_intelligence(10)
    set_wisdom(10)
    set_charisma(10)

  end

  def set_strength( value )
    @strength = value
    $str = (value - 10) / 2
  end
  def set_dexterity( value )
    @dexterity = value
    $dex = (value - 10) / 2
  end
  def set_constitution( value )
    @constitution = value
    $con = (value - 10) / 2
  end
  def set_intelligence( value )
    @intelligence = value
    $int = (value - 10) / 2
  end
  def set_wisdom( value )
    @wisdom = value
    $wis = (value - 10) / 2
  end
  def set_charisma( value )
    @charisma = value
    $cha = (value - 10) / 2
  end

  #TODO temp and adjustments

end