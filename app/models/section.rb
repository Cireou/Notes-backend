class Section < ApplicationRecord
  belongs_to :topic
  validates :title, presence: true
  #has_many :notes
  #has_many :alarms
end
