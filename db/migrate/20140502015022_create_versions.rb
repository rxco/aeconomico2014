class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.integer :year
      t.string :description

      t.timestamps
    end
  end
end
