class CreateMultimedia < ActiveRecord::Migration
  def change
    create_table :multimedia do |t|
      t.integer :type
      t.text :url
      t.integer :content_id

      t.timestamps
    end
  end
end
