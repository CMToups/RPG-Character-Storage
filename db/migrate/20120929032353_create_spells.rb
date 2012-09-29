class CreateSpells < ActiveRecord::Migration
  def change
    create_table :spells do |t|
      t.string :name
      t.string :altname
      t.string :school
      t.string :subschool
      t.string :descriptor
      t.integer :spellcraft_dc
      t.string :level
      t.text :components
      t.string :casting_time
      t.string :spell_range
      t.string :spell_target
      t.string :area
      t.string :result
      t.string :duration
      t.string :saving_throw
      t.string :spell_resistance
      t.string :short_description
      t.text :to_develop
      t.text :material_components
      t.string :arcane_material_components
      t.text :focus
      t.text :description
      t.text :xp_cost
      t.string :arcane_focus
      t.string :wizard_focus
      t.string :verbal_components
      t.string :sorcerer_focus
      t.string :bard_focus
      t.string :cleric_focus
      t.string :druid_focus
      t.text :full_text
      t.string :reference

      t.timestamps
    end
  end
end
