class CreateTableSubChapterHasProfile < ActiveRecord::Migration
  def change
    create_table :sub_chapter_profiles do |t|
    	t.integer :subchapter_id
    	t.integer :profile_id
    	t.boolean :relevant
    	t.timestamps
    end
    add_index :sub_chapter_profiles,[:subchapter_id,:profile_id]
  end
end
