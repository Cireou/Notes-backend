class UserSerializer < ActiveModel::Serializer
  attributes :email, :username
  has_many :topics
  has_many :shared_topics
end
