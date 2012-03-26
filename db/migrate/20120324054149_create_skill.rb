class CreateSkill < ActiveRecord::Migration
  def up
    create_table :skills do |t|

      t.integer :total
      t.integer :mod_value
      t.integer :rank
      t.integer :misc
      
      t.integer :character_id
      t.integer :skill_type_id

      t.timestamps
    end
  end

  def down
  end
end