class CreateBackgrounds < ActiveRecord::Migration
  def change
    create_table :backgrounds do |t|
      t.string :homeland
      t.text :history

      t.integer :character_id
      
      t.timestamps
    end
  end
end
