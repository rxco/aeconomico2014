class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :es_description
      t.text :en_description

      t.timestamps
    end
  end
end
