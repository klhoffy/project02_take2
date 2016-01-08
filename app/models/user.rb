class User < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :posts, dependent: :destroy
	has_secure_password
	validates :username, presence: true
	validates :email, presence: true, uniqueness: { case_sensitive: false }, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
	validates :password, presence: true, confirmation: true

end
