class Profile < ActiveRecord::Base
	has_many :suggestions
	has_many :chapters, :through => :suggestions
end
