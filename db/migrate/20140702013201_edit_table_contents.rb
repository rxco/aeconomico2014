class EditTableContents < ActiveRecord::Migration
  def change
  	add_column :contents,:image_url, :text
  	add_column :contents,:content_type, :integer
  	add_column :contents,:order,:integer
  	remove_column :contents, :quadrant
  	remove_column :contents, :inner_quadrant
  	remove_column :contents, :quadrant_type
  end
end