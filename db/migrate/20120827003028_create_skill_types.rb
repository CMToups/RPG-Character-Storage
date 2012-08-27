class CreateSkillTypes < ActiveRecord::Migration
  def change
    create_table :skill_types do |t|
      t.string :name
      t.text :description
      t.string :ability_type

      t.integer :skill_id

      t.timestamps
    end
  end
end
