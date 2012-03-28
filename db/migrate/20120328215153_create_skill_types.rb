class CreateSkillTypes < ActiveRecord::Migration
  def change
    create_table :skill_types do |t|

      t.timestamps
    end
  end
end
