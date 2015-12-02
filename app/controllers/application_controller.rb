class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	prepend_before_filter :set_current_user

	private

	def set_current_user
		@current_user = User.find_by(:access_token => params[:access_token])
		render :text => "access denied", :status => 403 if(current_user.nil?)
	end

	def current_user
		@current_user
	end
end
