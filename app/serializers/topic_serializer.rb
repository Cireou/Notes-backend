class TopicSerializer < ActiveModel::Serializer
  attributes :id, :color, :title, :img_url, :sharees
  has_one :user
  has_many :sections
  
  def sharees
    self.object.user_shared_topics.map{ |shared_topic|
      {
        email: shared_topic.sharee.email,
        id: shared_topic.id
      }
    }
  end
end
