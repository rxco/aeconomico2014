class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.text :es_description
      t.text :en_description
      t.integer :quadrant
      t.integer :inner_quadrant
      t.integer :quadrant_type
      t.integer :subchapter_id

      t.timestamps
    end
  end
end
