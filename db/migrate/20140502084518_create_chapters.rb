class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.text :es_description
      t.text :en_description
      t.integer :category_id
      t.integer :version_id

      t.timestamps
    end
  end
end
