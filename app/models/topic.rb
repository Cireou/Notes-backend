class Topic < ApplicationRecord
  belongs_to :user
  has_many :sections
  validates :title, {presence: true, uniqueness: true}
end
