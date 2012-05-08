class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
