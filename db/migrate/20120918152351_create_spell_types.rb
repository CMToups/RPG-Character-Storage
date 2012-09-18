class CreateSpellTypes < ActiveRecord::Migration
  def change
    create_table :spell_types do |t|
      t.string :name
      t.string :school
      t.string :descriptor
      t.text :description
      t.integer :cl_cleric
      t.integer :cl_druid
      t.integer :cl_paladin
      t.integer :cl_sorcerer
      t.integer :cl_ranger
      t.integer :cl_wizard
      t.text :components
      t.string :casting_time
      t.string :range
      t.string :duration
      t.string :saving_throw

      t.timestamps
    end
  end
end
