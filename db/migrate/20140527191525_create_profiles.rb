class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :es_description
      t.string :en_description

      t.timestamps
    end
  end
end
