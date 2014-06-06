class AddIndexToSuggestionsTable < ActiveRecord::Migration
  def change
  	#Adding the index can massively speed up join tables.
  	add_index(:suggestions, [:subchapter_id, :profile_id], :unique => true)
  end
end