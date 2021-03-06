# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120929052529) do

  create_table "abilities", :force => true do |t|
    t.string   "name"
    t.integer  "value"
    t.integer  "character_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "achievements", :force => true do |t|
    t.integer  "character_id"
    t.integer  "feat_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "aspects", :force => true do |t|
    t.string   "size"
    t.string   "gender"
    t.integer  "age"
    t.integer  "height"
    t.integer  "weight"
    t.string   "hair"
    t.string   "eye"
    t.string   "alignment"
    t.string   "deity"
    t.integer  "character_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "backgrounds", :force => true do |t|
    t.string   "homeland"
    t.text     "history"
    t.integer  "character_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "characters", :force => true do |t|
    t.integer  "base_attack_bonus"
    t.integer  "experience_points"
    t.string   "name"
    t.integer  "total_hit_points"
    t.integer  "money"
    t.integer  "player_id"
    t.integer  "race_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "characters_possessions", :id => false, :force => true do |t|
    t.integer "character_id",  :null => false
    t.integer "possession_id", :null => false
  end

  add_index "characters_possessions", ["character_id", "possession_id"], :name => "index_characters_possessions_on_character_id_and_possession_id"

  create_table "domains", :force => true do |t|
    t.string   "name"
    t.text     "granted_powers"
    t.string   "spell_1"
    t.string   "spell_2"
    t.string   "spell_3"
    t.string   "spell_4"
    t.string   "spell_5"
    t.string   "spell_6"
    t.string   "spell_7"
    t.string   "spell_8"
    t.string   "spell_9"
    t.text     "full_text"
    t.string   "reference"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "effectables", :force => true do |t|
    t.integer  "effect_id"
    t.integer  "effectee_id"
    t.string   "effectee_type"
    t.integer  "character_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "effectables", ["effect_id", "effectee_id"], :name => "index_effectables_on_effect_id_and_effectee_id"

  create_table "effects", :force => true do |t|
    t.string   "name"
    t.string   "target_klass"
    t.string   "target_instance"
    t.integer  "value"
    t.integer  "effector_id"
    t.string   "effector_type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "equipment", :force => true do |t|
    t.string   "name"
    t.string   "family"
    t.string   "category"
    t.string   "subcategory"
    t.string   "cost"
    t.string   "dmg_s"
    t.integer  "armor_shield_bonus"
    t.integer  "maximum_dex_bonus"
    t.string   "dmg_m"
    t.string   "weight"
    t.string   "critical"
    t.string   "armor_check_penalty"
    t.string   "arcane_spell_failure_chance"
    t.string   "range_increment"
    t.string   "speed_30"
    t.string   "weapon_type"
    t.string   "speed_20"
    t.text     "full_text"
    t.string   "reference"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "feats", :force => true do |t|
    t.string   "name"
    t.string   "feat_type"
    t.boolean  "multiple"
    t.boolean  "stack"
    t.string   "choice"
    t.text     "prerequisite"
    t.text     "benefit"
    t.text     "normal"
    t.text     "special"
    t.text     "full_text"
    t.string   "reference"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "feats_role_types", :id => false, :force => true do |t|
    t.integer "feat_id",      :null => false
    t.integer "role_type_id", :null => false
  end

  add_index "feats_role_types", ["feat_id", "role_type_id"], :name => "index_feats_role_types_on_feat_id_and_role_type_id"

  create_table "magic_items", :force => true do |t|
    t.string   "name"
    t.string   "category"
    t.string   "subcategory"
    t.boolean  "special_ability"
    t.string   "aura"
    t.integer  "caster_level"
    t.string   "price"
    t.integer  "manifester_level"
    t.text     "prereq"
    t.string   "cost"
    t.string   "weight"
    t.text     "full_text"
    t.string   "reference"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "players", :force => true do |t|
    t.boolean  "admin",                  :default => false
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "players", ["email"], :name => "index_players_on_email", :unique => true
  add_index "players", ["reset_password_token"], :name => "index_players_on_reset_password_token", :unique => true

  create_table "possessions", :force => true do |t|
    t.string   "name"
    t.string   "construction_cost"
    t.string   "construction_requirements"
    t.integer  "construction_caster_level"
    t.integer  "weight"
    t.text     "description"
    t.integer  "monetary_value"
    t.string   "category"
    t.string   "damage"
    t.boolean  "lethal"
    t.string   "critical_range"
    t.string   "critical_damage"
    t.string   "range"
    t.string   "magical_name"
    t.integer  "magic_value"
    t.string   "weapon_type"
    t.string   "slot"
    t.integer  "maximum_dexterity_value"
    t.integer  "armor_check_penalty"
    t.integer  "spell_failure"
    t.string   "speed_limitation"
    t.string   "type"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "powers", :force => true do |t|
    t.string   "name"
    t.string   "discipline"
    t.string   "subdiscipline"
    t.string   "descriptor"
    t.string   "level"
    t.string   "display"
    t.string   "manifesting_time"
    t.string   "power_range"
    t.string   "power_target"
    t.string   "area"
    t.string   "result"
    t.string   "duration"
    t.string   "saving_throw"
    t.string   "power_points"
    t.string   "power_resistance"
    t.text     "short_description"
    t.text     "xp_cost"
    t.text     "description"
    t.text     "augment"
    t.text     "full_text"
    t.string   "reference"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "races", :force => true do |t|
    t.string   "name"
    t.integer  "speed"
    t.string   "vision"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "role_types", :force => true do |t|
    t.string   "name"
    t.string   "category"
    t.string   "alignment"
    t.string   "hit_die"
    t.text     "role_skills"
    t.integer  "skill_points"
    t.string   "skill_points_ability"
    t.string   "spell_stat"
    t.text     "proficiencies"
    t.string   "caster_type"
    t.integer  "epic_feat_base_level"
    t.integer  "epic_feat_interval"
    t.text     "epic_feat_list"
    t.text     "epic_full_text"
    t.string   "req_race"
    t.string   "req_weapon_proficiency"
    t.integer  "req_base_attack_bonus"
    t.string   "req_skill"
    t.string   "req_feat"
    t.string   "req_spells"
    t.string   "req_languages"
    t.string   "req_psionics"
    t.string   "req_epic_feat"
    t.string   "req_special"
    t.text     "spell_list_1"
    t.string   "spell_list_2"
    t.string   "spell_list_3"
    t.string   "spell_list_4"
    t.string   "spell_list_5"
    t.text     "full_text"
    t.string   "reference"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "role_types_skills", :id => false, :force => true do |t|
    t.integer "role_type_id", :null => false
    t.integer "skill_id",     :null => false
  end

  add_index "role_types_skills", ["role_type_id", "skill_id"], :name => "index_role_types_skills_on_role_type_id_and_skill_id"

  create_table "roles", :force => true do |t|
    t.integer  "character_id"
    t.integer  "role_type_id"
    t.integer  "level"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "skill_types", :force => true do |t|
    t.string   "name"
    t.text     "subtype"
    t.string   "ability_type"
    t.boolean  "psionic"
    t.boolean  "trained"
    t.boolean  "armor_check"
    t.text     "description"
    t.text     "skill_check"
    t.text     "action"
    t.text     "try_again"
    t.text     "special"
    t.text     "restriction"
    t.text     "synergy"
    t.text     "epic_use"
    t.text     "untrained"
    t.text     "full_text"
    t.string   "reference"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "skills", :force => true do |t|
    t.integer  "rank"
    t.integer  "character_id"
    t.integer  "skill_type_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "spell_lists_spell_types", :id => false, :force => true do |t|
    t.integer "spell_list_id", :null => false
    t.integer "spell_type_id", :null => false
  end

  create_table "spell_slots", :force => true do |t|
    t.integer  "character_id"
    t.integer  "magic_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "spells", :force => true do |t|
    t.string   "name"
    t.string   "altname"
    t.string   "school"
    t.string   "subschool"
    t.string   "descriptor"
    t.integer  "spellcraft_dc"
    t.string   "level"
    t.text     "components"
    t.string   "casting_time"
    t.string   "spell_range"
    t.string   "spell_target"
    t.string   "area"
    t.string   "result"
    t.string   "duration"
    t.string   "saving_throw"
    t.string   "spell_resistance"
    t.string   "short_description"
    t.text     "to_develop"
    t.text     "material_components"
    t.string   "arcane_material_components"
    t.text     "focus"
    t.text     "description"
    t.text     "xp_cost"
    t.string   "arcane_focus"
    t.string   "wizard_focus"
    t.string   "verbal_components"
    t.string   "sorcerer_focus"
    t.string   "bard_focus"
    t.string   "cleric_focus"
    t.string   "druid_focus"
    t.text     "full_text"
    t.string   "reference"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

end
