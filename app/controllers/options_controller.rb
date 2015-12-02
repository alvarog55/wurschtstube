class OptionsController < ApplicationController
	before_filter :load_option, :only => :show
	before_filter :load_options, :only => :index

	def index
	end

	def create
	end

	private

	def load_option
		@option = Option.find(params[:id])
	end

	def load_options
		@election = Election.find(params[:election_id])
		@options = @election.options
	end
end