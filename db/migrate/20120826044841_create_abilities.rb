class CreateAbilities < ActiveRecord::Migration
  def change
    create_table :abilities do |t|
      t.string :name
      t.integer :value
      
      t.integer :character_id
      
      t.timestamps
    end
  end
end
