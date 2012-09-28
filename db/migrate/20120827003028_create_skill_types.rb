class CreateSkillTypes < ActiveRecord::Migration
  def change
    create_table :skill_types do |t|
      t.string 	:name
      t.text 		:subtype
      t.string 	:ability_type
      t.boolean :psionic
      t.boolean	:trained
      t.boolean	:armor_check
      t.text 		:description
      t.text 		:skill_check
      t.text 		:action
      t.text 		:try_again
      t.text 		:special
      t.text 		:restriction
      t.text 		:synergy
      t.text 		:epic_use
      t.text 		:untrained
      t.text 		:full_text
      t.string 	:reference

      t.timestamps
    end
  end
end
