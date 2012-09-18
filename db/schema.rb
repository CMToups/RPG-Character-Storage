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

ActiveRecord::Schema.define(:version => 20120917233203) do

  create_table "abilities", :force => true do |t|
    t.string   "name"
    t.integer  "value"
    t.integer  "character_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "aspects", :force => true do |t|
    t.integer  "size"
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

  create_table "character_class_types", :force => true do |t|
    t.string   "name"
    t.integer  "character_class_id"
    t.text     "description"
    t.text     "alignment"
    t.string   "hit_die"
    t.integer  "skill_rank_per_level"
    t.text     "spells_per_day"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "character_classes", :force => true do |t|
    t.integer  "character_id"
    t.integer  "character_class_type_id"
    t.integer  "level"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
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

  create_table "characters_feats", :force => true do |t|
    t.integer  "character_id"
    t.integer  "feat_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "effectables", :force => true do |t|
    t.integer  "effect_id"
    t.integer  "effectee_id"
    t.string   "effectee_type"
    t.integer  "character_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

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

  create_table "races", :force => true do |t|
    t.string   "name"
    t.integer  "speed"
    t.string   "vision"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
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

end
