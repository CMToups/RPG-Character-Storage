class CreateFeats < ActiveRecord::Migration
  def change
    create_table :feats do |t|
      t.string :name
      t.text :prerequisites
      t.text :description

      t.timestamps
    end
  end
end
