class SubCategory < ApplicationRecord
  belongs_to :category
  has_many :topic_threads
end
