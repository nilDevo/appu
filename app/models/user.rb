class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :products
#  attr_accessible :email, :password
  #	has_secure_password
#	validates_uniqueness_of :user_name
#	validates_presence_of :user_name
# 	validates_confirmation_of :password
end
