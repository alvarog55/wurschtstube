class Option < ActiveRecord::Base
	belongs_to :election
	belongs_to :choice

	validates :link, :presence => true
	validates :text, :presence => true
end
