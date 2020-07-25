class SectionSerializer < ActiveModel::Serializer
  attributes :id, :title, :notes
  has_one :topic
end
