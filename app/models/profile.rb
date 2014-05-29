class Profile < ActiveRecord::Base
	has_many :suggestions
	has_many :subchapters, :through => :suggestions
end
