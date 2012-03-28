class Spells

  attr :spell, :dc


  def add_spell(spell_name, spell_level)
      @spell = [spell_name, spell_level]
  end


  def spell_save(spell_level, character_level)
     return @dc = spell_level + @int + (character_level / 2).to_i + 10
  end
end
