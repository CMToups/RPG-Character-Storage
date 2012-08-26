class CreateAspects < ActiveRecord::Migration
  def change
    create_table :aspects do |t|
      t.integer :size
      t.string :gender
      t.integer :age
      t.integer :height
      t.integer :weight
      t.string :hair
      t.string :eye
      t.string :alignment
      t.string :deity

      t.integer :character_id
      
      t.timestamps
    end
  end
end
