class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.integer :rank

      t.integer :character_id
      t.integer :skill_type_id

      t.timestamps
    end
  end
end
