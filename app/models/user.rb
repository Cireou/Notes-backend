class User < ApplicationRecord
    has_many :topics
    has_many :user_shared_topics, foreign_key: "sharee_id"
    has_many :shared_topics, through: :user_shared_topics

    has_secure_password
    validates :username, presence:true 
    validates :email, {presence:true, uniqueness:true}
    validates :password, presence: true
    validates :password_confirmation, presence: true
end
