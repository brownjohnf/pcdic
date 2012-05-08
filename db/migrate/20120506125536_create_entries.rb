class CreateEntries < ActiveRecord::Migration
  def up
    create_table :entries do |t|
      t.string :part_a
      t.string :part_b
      t.string :part_c
      t.string :part_d
      t.string :part_e
      t.string :part_f
      t.integer :part_of_speech_id
      t.integer :language_id
      t.string :primary_part
      t.string :first_form
      t.string :second_form
      t.string :third_form
      t.text :comments

      t.timestamps
    end

    add_index :entries, :part_of_speech_id
    add_index :entries, :language_id
    add_index :entries, [ :part_of_speech_id, :language_id ], :unique => true
  end

  def down
    drop_table :entries
  end
end
