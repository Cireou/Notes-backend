class UserSerializer < ActiveModel::Serializer
  attributes :email, :username, :image_url
  has_many :topics
  has_many :shared_topics
end
