class Election < ActiveRecord::Base
	has_many :options
	has_many :choices
end
