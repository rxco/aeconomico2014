class AddFieldsForContent < ActiveRecord::Migration
  def change
  	add_column :contents,:html_for_render_es,:text
  	add_column :contents,:html_for_render_en,:text
  end
end
