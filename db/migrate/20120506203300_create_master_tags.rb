class CreateMasterTags < ActiveRecord::Migration
  def change
    create_table :master_tags do |t|
      t.string :en
      t.string :fr

      t.timestamps
    end
  end
end
