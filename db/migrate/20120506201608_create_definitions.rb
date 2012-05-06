class CreateDefinitions < ActiveRecord::Migration
  def change
    create_table :definitions do |t|
      t.integer :word_id
      t.string :content
      t.integer :priority

      t.timestamps
    end
  end
end
