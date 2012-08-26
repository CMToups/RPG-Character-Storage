class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :base_attack_bonus
      t.integer :experience_points
      t.string :name
      t.integer :total_hit_points
      t.integer :money

      t.integer :player_id
      t.integer :race_id
      
      t.timestamps
    end
  end
end
