class CreateFeats < ActiveRecord::Migration
  def change
    create_table :feats do |t|
      
      t.integer :character_id
      t.integer :feat_type_id
      
      t.timestamps
    end
  end
end
