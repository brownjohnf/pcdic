class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.integer :part_of_speech_id
      t.integer :language_id
      t.integer :user_id

      t.timestamps
    end
  end
end
