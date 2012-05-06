class CreateUsages < ActiveRecord::Migration
  def change
    create_table :usages do |t|
      t.integer :word_id
      t.string :example
      t.integer :priority

      t.timestamps
    end
  end
end
