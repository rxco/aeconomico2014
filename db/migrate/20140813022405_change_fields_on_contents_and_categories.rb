class ChangeFieldsOnContentsAndCategories < ActiveRecord::Migration
  def change
  	add_column :categories,:background_image,:text
  	remove_column :contents, :image_url
  	remove_column :contents, :content_type
  	remove_column :contents, :order
  end
end
