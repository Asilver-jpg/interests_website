class TopicThread < ApplicationRecord
  belongs_to :category
  belongs_to :profile
  has_many :posts
end
