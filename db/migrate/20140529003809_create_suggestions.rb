class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
    	t.belongs_to :subchapter
      	t.belongs_to :profile
      	t.boolean :relevant
      t.timestamps
    end
  end
end
