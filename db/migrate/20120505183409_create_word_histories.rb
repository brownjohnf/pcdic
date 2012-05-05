class CreateWordHistories < ActiveRecord::Migration
  def change
    create_table :word_histories do |t|
      t.integer :word_id
      t.integer :user_id
      t.string :part_a
      t.string :part_b
      t.string :part_c
      t.string :part_d
      t.string :part_e
      t.string :part_f

      t.timestamps
    end
  end
end
