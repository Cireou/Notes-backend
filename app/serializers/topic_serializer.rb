class TopicSerializer < ActiveModel::Serializer
  attributes :id, :color, :title, :img_url
  has_one :user
  has_many :sections
end
