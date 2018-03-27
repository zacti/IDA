class User < ApplicationRecord
	has_many :furnitures
	has_secure_password
	
	validates :email, presence: true, uniqueness: true

	def user?
      self.type == "User"
  	end

  	def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first

    unless user
        user = User.create(
           email: data['email'],
           password: SecureRandom.hex
        )
    end
    user
end
end
