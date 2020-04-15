class SubCategory < ApplicationRecord
  belongs_to :category
  has_many :topic_threads
  has_many :interests
  has_many :profiles, through: :interests
end
