class TopicThread < ApplicationRecord
  belongs_to :sub_category
  belongs_to :profile
  has_many :posts, dependent: :destroy
end
