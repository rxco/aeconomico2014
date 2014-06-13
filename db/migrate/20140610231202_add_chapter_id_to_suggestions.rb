class AddChapterIdToSuggestions < ActiveRecord::Migration
  def change

  	remove_column :suggestions, :subchapter_id
  	add_column :suggestions,:chapter_id, :integer

  	add_index(:suggestions, [:chapter_id, :profile_id], :unique => true)

  end
end
