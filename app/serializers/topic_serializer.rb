class TopicSerializer < ActiveModel::Serializer
  attributes :id, :color, :title
  has_one :user
  has_many :sections
end
