class UserSharedTopic < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "owner_id"
  belongs_to :sharee, class_name: "User", foreign_key: "sharee_id"
  belongs_to :shared_topic, class_name: "Topic", foreign_key: "shared_topic_id"

  validates :shared_topic, uniqueness: {scope: [:owner, :sharee]}
end
