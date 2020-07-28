class User < ApplicationRecord
    has_many :topics, dependent: :destroy
    has_many :user_shared_topics, foreign_key: "sharee_id", dependent: :destroy
    has_many :shared_topics, through: :user_shared_topics, dependent: :destroy

    has_secure_password
    validates :username, presence:true 
    validates :email, {presence:true, uniqueness:true}
    validates :password, presence: true
    validates :password_confirmation, presence: true
end
