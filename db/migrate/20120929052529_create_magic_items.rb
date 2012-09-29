class CreateMagicItems < ActiveRecord::Migration
  def change
    create_table :magic_items do |t|
      t.string :name
      t.string :category
      t.string :subcategory
      t.boolean :special_ability
      t.string :aura
      t.integer :caster_level
      t.string :price
      t.integer :manifester_level
      t.text :prereq
      t.string :cost
      t.string :weight
      t.text :full_text
      t.string :reference

      t.timestamps
    end
  end
end
