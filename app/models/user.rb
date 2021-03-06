class User < ActiveRecord::Base
	validates :access_token, :presence => true

	before_validation :generate_access_token

	private

	def generate_access_token
		self.access_token ||= SecureRandom.hex(5)
	end
end
