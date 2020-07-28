class Topic < ApplicationRecord
  belongs_to :user
  has_many :sections, dependent: :destroy
  has_many :user_shared_topics, foreign_key: "shared_topic_id", dependent: :destroy
  validates :title, {presence: true}

end
