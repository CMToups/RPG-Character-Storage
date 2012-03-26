class CreateSkillTypes < ActiveRecord::Migration
  def change
    create_table :skill_types do |t|

      t.string :name
      t.string :discription
      t.string :modifier_type
      
      t.timestamps
    end
  end
end
