class User < ActiveRecord::Base
	has_many :articles
	validates :username, presence: true, uniqueness: { case_sensitive: false },
											 length: { minimum: 3, maximum: 30 }
	before_save :downcase_email
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, uniqueness: { case_sensitive: false },
										format: { with: VALID_EMAIL_REGEX }


	private

	# Converts to lowercase email
	def downcase_email
		email.downcase!
	end
end
