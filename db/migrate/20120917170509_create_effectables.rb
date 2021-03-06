class CreateEffectables < ActiveRecord::Migration
  def change
    create_table :effectables do |t|
      t.integer :effect_id
      t.integer :effectee_id
      t.string :effectee_type
      t.integer :character_id

      t.timestamps
    end
    
    add_index(:effectables, [:effect_id, :effectee_id])

  end
end
