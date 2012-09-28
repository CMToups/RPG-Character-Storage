class CreateFeats < ActiveRecord::Migration
  def change
    create_table :feats do |t|
      t.string 	:name
      t.string 	:feat_type
      t.boolean :multiple
      t.boolean	:stack
      t.string 	:choice
      t.text 		:prerequisite
      t.text 		:benefit
      t.text 		:normal
      t.text 		:special
      t.text 		:full_text
      t.string 	:reference
      
      t.timestamps
    end
  end
end
