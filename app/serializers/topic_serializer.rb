class TopicSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_one :user
end
