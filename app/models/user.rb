class User < ActiveRecord::Base
	has_secure_password
	validates_uniqueness_of :user_name
	validates_presence_of :user_name
	validates_confirmation_of :password
end
