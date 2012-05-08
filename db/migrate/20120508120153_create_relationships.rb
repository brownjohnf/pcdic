class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :word_a_id
      t.integer :word_b_id
      t.integer :relationship_type_id
      t.integer :user_id

      t.timestamps
    end

    add_index :relationships, :word_a_id
    add_index :relationships, :word_b_id
    add_index :relationships, :relationship_type_id
    add_index :relationships, [ :word_a_id, :word_b_id, :relationship_type_id ], :unique => true, :name => 'my_relation_index'
  end
end
