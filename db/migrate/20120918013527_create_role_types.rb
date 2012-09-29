class CreateRoleTypes < ActiveRecord::Migration
  def change
    create_table :role_types do |t|
      t.string 	:name
      t.string 	:category
      t.string 	:alignment
      t.string 	:hit_die
      t.text 		:role_skills
      t.integer :skill_points
      t.string 	:skill_points_ability
			t.string 	:spell_stat
			t.text 		:proficiencies
			t.string	:caster_type
			t.integer :epic_feat_base_level
			t.integer :epic_feat_interval
			t.text 		:epic_feat_list
			t.text 		:epic_full_text
			t.string 	:req_race
			t.string 	:req_weapon_proficiency
			t.integer :req_base_attack_bonus
			t.string 	:req_skill
			t.string 	:req_feat
			t.string 	:req_spells
			t.string 	:req_languages
			t.string 	:req_psionics
			t.string 	:req_epic_feat
			t.string 	:req_special
			t.text 		:spell_list_1
			t.string 	:spell_list_2
			t.string 	:spell_list_3
			t.string 	:spell_list_4
			t.string 	:spell_list_5
			t.text 		:full_text
			t.string 	:reference

      t.timestamps
    end
  end
end
