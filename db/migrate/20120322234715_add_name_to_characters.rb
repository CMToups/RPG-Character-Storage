class AddNameToCharacters < ActiveRecord::Migration
  def change
    change_table :characters do |t|
      
      t.string :name
      
    end
  end
end
