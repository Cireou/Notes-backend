class User < ApplicationRecord
    has_many :topics
    has_secure_password
    validates :username, presence:true 
    validates :email, {presence:true, uniqueness:true}
    validates :password, presence: true
    validates :password_confirmation, presence: true
end
