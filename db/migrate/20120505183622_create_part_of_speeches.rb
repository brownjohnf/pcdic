class CreatePartOfSpeeches < ActiveRecord::Migration
  def change
    create_table :part_of_speeches do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
