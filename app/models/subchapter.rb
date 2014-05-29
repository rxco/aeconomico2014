class Subchapter < ActiveRecord::Base
	belongs_to :chapter
	has_many :suggestions
	has_many :profiles, :through => :suggestions
end
