class CreateFeatTypes < ActiveRecord::Migration
  def change
    create_table :feat_types do |t|
      t.string :name
      t.text :prerequisites
      t.text :description
      
      t.integer :feat

      t.timestamps
    end
  end
end
