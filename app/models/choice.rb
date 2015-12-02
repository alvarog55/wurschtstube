class Choice < ActiveRecord::Base
	belongs_to :first, :class_name => Option
	belongs_to :second, :class_name => Option
	belongs_to :third, :class_name => Option
	belongs_to :nogo, :class_name => Option
	belongs_to :election

	validates :first_id, :presence => true
	validates :second_id, :presence => true
	validates :third_id, :presence => true
	validates :nogo_id, :presence => true
end
