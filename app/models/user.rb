class User < ActiveRecord::Base
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
	validates :password, presence: true, length: { minimum: 8 }
	validates :username, presence: true, uniqueness: true

end
