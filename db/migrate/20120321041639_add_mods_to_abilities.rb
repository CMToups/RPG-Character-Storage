class AddModsToAbilities < ActiveRecord::Migration
  def change
    change_table :abilities do |t|
  
      t.integer :str
      t.integer :dex
      t.integer :con
      t.integer :int
      t.integer :wis
      t.integer :cha
      
    end
  end
end
