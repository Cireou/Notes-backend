class Section < ApplicationRecord
  belongs_to :topic
  validates :title, presence: true
  #has_many :alarms
end
