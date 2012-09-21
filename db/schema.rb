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

ActiveRecord::Schema.define(:version => 20120921024601) do

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

  create_table "apparels", :force => true do |t|
    t.string "slot"
  end

  create_table "armors", :force => true do |t|
    t.string  "category"
    t.string  "slot"
    t.integer "maximum_dexterity_value"
    t.integer "armor_check_penalty"
    t.integer "spell_failure"
    t.string  "speed_limitation"
    t.integer "magic_value"
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

  create_table "consumables", :force => true do |t|
    t.string "expiration"
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

  create_table "feats", :force => true do |t|
    t.string   "name"
    t.text     "prerequisites"
    t.text     "description"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "feats_role_types", :id => false, :force => true do |t|
    t.integer "feat_id",      :null => false
    t.integer "role_type_id", :null => false
  end

  add_index "feats_role_types", ["feat_id", "role_type_id"], :name => "index_feats_role_types_on_feat_id_and_role_type_id"

  create_table "goods", :force => true do |t|
    t.string "category"
  end

  create_table "lodgings", :force => true do |t|
    t.string "location"
  end

  create_table "meterials", :force => true do |t|
    t.string "usage"
    t.string "duration"
  end

  create_table "players", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "possessions", :force => true do |t|
    t.string   "name"
    t.string   "construction_cost"
    t.string   "construction_requirements"
    t.integer  "construction_caster_level"
    t.integer  "weight"
    t.text     "description"
    t.integer  "monetary_value"
    t.string   "type"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
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
    t.integer  "role_id"
    t.text     "description"
    t.text     "alignment"
    t.string   "hit_die"
    t.integer  "skill_rank_per_level"
    t.text     "spells_per_day"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
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

  create_table "services", :force => true do |t|
    t.string "duration"
  end

  create_table "skill_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "ability_type"
    t.integer  "skill_id"
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

  add_index "spell_lists_spell_types", ["spell_list_id", "spell_type_id"], :name => "index_spell_lists_spell_types_on_spell_list_id_and_spell_type_id"

  create_table "spell_slots", :force => true do |t|
    t.integer  "character_id"
    t.integer  "spell_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "spells", :force => true do |t|
    t.string   "name"
    t.string   "school"
    t.string   "descriptor"
    t.text     "description"
    t.integer  "cl_cleric"
    t.integer  "cl_druid"
    t.integer  "cl_paladin"
    t.integer  "cl_sorcerer"
    t.integer  "cl_ranger"
    t.integer  "cl_wizard"
    t.text     "components"
    t.string   "casting_time"
    t.string   "range"
    t.string   "duration"
    t.string   "saving_throw"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "tools", :force => true do |t|
    t.string "function"
  end

  create_table "transports", :force => true do |t|
    t.string "transportation_method"
  end

  create_table "weapons", :force => true do |t|
    t.string  "category"
    t.string  "damage"
    t.boolean "lethal"
    t.string  "critical_range"
    t.string  "critical_damage"
    t.string  "range"
    t.string  "magical_name"
    t.integer "magic_value"
    t.string  "weapon_type"
  end

  create_view "view_apparels", "SELECT possessions.id, name,construction_cost,construction_requirements,construction_caster_level,weight,description,monetary_value,type,created_at,updated_at,slot FROM possessions, apparels WHERE possessions.id = apparels.id", :force => true do |v|
    v.column :id
    v.column :name
    v.column :construction_cost
    v.column :construction_requirements
    v.column :construction_caster_level
    v.column :weight
    v.column :description
    v.column :monetary_value
    v.column :type
    v.column :created_at
    v.column :updated_at
    v.column :slot
  end

  create_view "view_armors", "SELECT possessions.id, name,construction_cost,construction_requirements,construction_caster_level,weight,description,monetary_value,type,created_at,updated_at,category,slot,maximum_dexterity_value,armor_check_penalty,spell_failure,speed_limitation,magic_value FROM possessions, armors WHERE possessions.id = armors.id", :force => true do |v|
    v.column :id
    v.column :name
    v.column :construction_cost
    v.column :construction_requirements
    v.column :construction_caster_level
    v.column :weight
    v.column :description
    v.column :monetary_value
    v.column :type
    v.column :created_at
    v.column :updated_at
    v.column :category
    v.column :slot
    v.column :maximum_dexterity_value
    v.column :armor_check_penalty
    v.column :spell_failure
    v.column :speed_limitation
    v.column :magic_value
  end

  create_view "view_consumables", "SELECT possessions.id, name,construction_cost,construction_requirements,construction_caster_level,weight,description,monetary_value,type,created_at,updated_at,expiration FROM possessions, consumables WHERE possessions.id = consumables.id", :force => true do |v|
    v.column :id
    v.column :name
    v.column :construction_cost
    v.column :construction_requirements
    v.column :construction_caster_level
    v.column :weight
    v.column :description
    v.column :monetary_value
    v.column :type
    v.column :created_at
    v.column :updated_at
    v.column :expiration
  end

  create_view "view_goods", "SELECT possessions.id, name,construction_cost,construction_requirements,construction_caster_level,weight,description,monetary_value,type,created_at,updated_at,category FROM possessions, goods WHERE possessions.id = goods.id", :force => true do |v|
    v.column :id
    v.column :name
    v.column :construction_cost
    v.column :construction_requirements
    v.column :construction_caster_level
    v.column :weight
    v.column :description
    v.column :monetary_value
    v.column :type
    v.column :created_at
    v.column :updated_at
    v.column :category
  end

  create_view "view_lodgings", "SELECT possessions.id, name,construction_cost,construction_requirements,construction_caster_level,weight,description,monetary_value,type,created_at,updated_at,location FROM possessions, lodgings WHERE possessions.id = lodgings.id", :force => true do |v|
    v.column :id
    v.column :name
    v.column :construction_cost
    v.column :construction_requirements
    v.column :construction_caster_level
    v.column :weight
    v.column :description
    v.column :monetary_value
    v.column :type
    v.column :created_at
    v.column :updated_at
    v.column :location
  end

  create_view "view_meterials", "SELECT possessions.id, name,construction_cost,construction_requirements,construction_caster_level,weight,description,monetary_value,type,created_at,updated_at,usage,duration FROM possessions, meterials WHERE possessions.id = meterials.id", :force => true do |v|
    v.column :id
    v.column :name
    v.column :construction_cost
    v.column :construction_requirements
    v.column :construction_caster_level
    v.column :weight
    v.column :description
    v.column :monetary_value
    v.column :type
    v.column :created_at
    v.column :updated_at
    v.column :usage
    v.column :duration
  end

  create_view "view_services", "SELECT possessions.id, name,construction_cost,construction_requirements,construction_caster_level,weight,description,monetary_value,type,created_at,updated_at,duration FROM possessions, services WHERE possessions.id = services.id", :force => true do |v|
    v.column :id
    v.column :name
    v.column :construction_cost
    v.column :construction_requirements
    v.column :construction_caster_level
    v.column :weight
    v.column :description
    v.column :monetary_value
    v.column :type
    v.column :created_at
    v.column :updated_at
    v.column :duration
  end

  create_view "view_tools", "SELECT possessions.id, name,construction_cost,construction_requirements,construction_caster_level,weight,description,monetary_value,type,created_at,updated_at,function FROM possessions, tools WHERE possessions.id = tools.id", :force => true do |v|
    v.column :id
    v.column :name
    v.column :construction_cost
    v.column :construction_requirements
    v.column :construction_caster_level
    v.column :weight
    v.column :description
    v.column :monetary_value
    v.column :type
    v.column :created_at
    v.column :updated_at
    v.column :function
  end

  create_view "view_transports", "SELECT possessions.id, name,construction_cost,construction_requirements,construction_caster_level,weight,description,monetary_value,type,created_at,updated_at,transportation_method FROM possessions, transports WHERE possessions.id = transports.id", :force => true do |v|
    v.column :id
    v.column :name
    v.column :construction_cost
    v.column :construction_requirements
    v.column :construction_caster_level
    v.column :weight
    v.column :description
    v.column :monetary_value
    v.column :type
    v.column :created_at
    v.column :updated_at
    v.column :transportation_method
  end

  create_view "view_weapons", "SELECT possessions.id, name,construction_cost,construction_requirements,construction_caster_level,weight,description,monetary_value,type,created_at,updated_at,category,damage,lethal,critical_range,critical_damage,range,magical_name,magic_value,weapon_type FROM possessions, weapons WHERE possessions.id = weapons.id", :force => true do |v|
    v.column :id
    v.column :name
    v.column :construction_cost
    v.column :construction_requirements
    v.column :construction_caster_level
    v.column :weight
    v.column :description
    v.column :monetary_value
    v.column :type
    v.column :created_at
    v.column :updated_at
    v.column :category
    v.column :damage
    v.column :lethal
    v.column :critical_range
    v.column :critical_damage
    v.column :range
    v.column :magical_name
    v.column :magic_value
    v.column :weapon_type
  end

end
