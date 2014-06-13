class Suggestion < ActiveRecord::Base
	#debe apuntar a modelo no a la tabla, para este ejemplo, se debe
	#usar profile en lugar de profiles
	
	belongs_to :profile
	belongs_to :chapter
end
