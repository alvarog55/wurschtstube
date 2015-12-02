class ChoicesController < ApplicationController
	before_filter :load_choice

	def create
	end

	private

	def load_choice
		@choice = Choice.find(params[{:id])
	end
end