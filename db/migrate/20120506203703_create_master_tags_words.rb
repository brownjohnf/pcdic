class CreateMasterTagsWords < ActiveRecord::Migration
  def up
    create_table :master_tags_words, :id => false do |t|
      t.references :master_tag, :word
    end

    add_index :master_tags_words, :master_tag_id
    add_index :master_tags_words, :word_id
    add_index :master_tags_words, [ :master_tag_id, :word_id ], :unique => true
  end

  def down
    drop_table :master_tags_words
  end
end
