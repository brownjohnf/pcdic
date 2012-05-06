class CreateEntries < ActiveRecord::Migration
  def change
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
  end
end
