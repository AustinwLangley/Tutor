class Tutor < ActiveRecord::Base
	attr_reader :password

	has_many :reports
			
	def password=(unencrypted_password)
		unless unencrypted_password.empty?
			@password = unencrypted_password
			self.password_digest = BCrypt::Password.create(unencrypted_password)
		end
	end
	def authenticate(unencrypted_password)
		if BCrypt::Password.new(self.password_digest) == unencrypted_password
			return self
		else
			return false
		end
	end
end #end of the class


