class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.integer :character_id
      t.integer :role_type_id
      t.integer :level

      t.timestamps
    end
  end
end
