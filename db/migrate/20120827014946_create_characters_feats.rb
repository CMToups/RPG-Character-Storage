class CreateCharactersFeats < ActiveRecord::Migration
  def change
    create_table :characters_feats do |t|
      
      t.integer :character_id
      t.integer :feat_id
      
      t.timestamps
    end
    
    add_index(:characters_feats, [:character_id, :feat_id])
  end
end
