class CreateSubchapters < ActiveRecord::Migration
  def change
    create_table :subchapters do |t|
      t.text :es_description
      t.text :en_description
      t.integer :chapter_id

      t.timestamps
    end
  end
end
