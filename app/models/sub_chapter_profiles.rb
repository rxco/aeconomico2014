class SubChapterProfiles < ActiveRecord::Base
	belongs_to :profile
	belongs_to :subchapter
end
