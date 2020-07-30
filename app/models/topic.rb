class Topic < ApplicationRecord
  belongs_to :user
  has_many :sections, dependent: :destroy
  has_many :user_shared_topics, foreign_key: "shared_topic_id", dependent: :destroy
  has_many :sharees, through: :user_shared_topics
  validates :title, {presence: true}

end
