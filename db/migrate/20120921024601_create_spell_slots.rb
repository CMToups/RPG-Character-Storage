class CreateSpellSlots < ActiveRecord::Migration
  def change
    create_table :spell_slots do |t|
      t.integer :character_id
      t.integer :spell_id

      t.timestamps
    end
  end
end
