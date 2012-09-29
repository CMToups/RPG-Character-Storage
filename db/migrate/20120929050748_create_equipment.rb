class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :name
      t.string :family
      t.string :category
      t.string :subcategory
      t.string :cost
      t.string :dmg_s
      t.integer :armor_shield_bonus
      t.integer :maximum_dex_bonus
      t.string :dmg_m
      t.string :weight
      t.string :critical
      t.string :armor_check_penalty
      t.string :arcane_spell_failure_chance
      t.string :range_increment
      t.string :speed_30
      t.string :weapon_type
      t.string :speed_20
      t.text :full_text
      t.string :reference

      t.timestamps
    end
  end
end
