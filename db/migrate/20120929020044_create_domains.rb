class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains do |t|
      t.string :name
      t.text :granted_powers
      t.string :spell_1
      t.string :spell_2
      t.string :spell_3
      t.string :spell_4
      t.string :spell_5
      t.string :spell_6
      t.string :spell_7
      t.string :spell_8
      t.string :spell_9
      t.text :full_text
      t.string :reference

      t.timestamps
    end
  end
end
