class CreateWeapons < ActiveRecord::Migration
  def up
    create_table :weapons do |t|
      t.string :category
      t.string :damage
      t.boolean :lethal
      t.string :critical_range
      t.string :critical_damage
      t.string :range
      t.string :magical_name
      t.integer :magic_value
    end
    
    create_citier_view(Weapon)
  end
  
  def down 
  	drop_citier_view(Weapon)
    drop_table :weapons 
  end
end
