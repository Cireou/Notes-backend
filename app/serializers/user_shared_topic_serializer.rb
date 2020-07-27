class UserSharedTopicSerializer < ActiveModel::Serializer
  attributes :id, :permission
  has_one :owner
  has_one :sharee
  has_one :shared_topic
end
