class CreateRelationshipTypes < ActiveRecord::Migration
  def change
    create_table :relationship_types do |t|
      t.string :name
      t.string :pictogram
      t.string :description

      t.timestamps
    end

    add_index :relationship_types, :name, :unique => true
    add_index :relationship_types, :pictogram, :unique => true
  end
end
