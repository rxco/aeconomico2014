class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.text :es_description
      t.text :en_description

      t.timestamps
    end
  end
end
