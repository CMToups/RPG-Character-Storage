class CreateCharacterClassTypes < ActiveRecord::Migration
  def change
    create_table :character_class_types do |t|
      t.string :name
      t.integer :character_class_id
      t.text :description
      t.text :alignment
      t.string :hit_die
      t.integer :skill_rank_per_level
      t.text :spells_per_day

      t.timestamps
    end
  end
end
