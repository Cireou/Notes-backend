class Topic < ApplicationRecord
  belongs_to :user
  has_many :sections
  has_many :user_shared_topics, foreign_key: "shared_topic_id"
  validates :title, {presence: true}

end
