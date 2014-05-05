class Subchapter < ActiveRecord::Base
	has_many :subchapterprofiles
	has_many :subchapters, :through => :subchapterprofiles
end
