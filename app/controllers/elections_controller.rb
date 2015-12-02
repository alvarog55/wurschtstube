class ElectionsController < ApplicationController
	before_filter :load_election

	def show
	end

	private

	def load_election
		@election = Election.find(params[:id])
	end
end