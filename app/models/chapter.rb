class Chapter < ActiveRecord::Base
	has_many :subchapters

	has_many :suggestions
	has_many :profiles, :through => :suggestions
end
