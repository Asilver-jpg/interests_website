class Post < ApplicationRecord
  belongs_to :profile
  belongs_to :topic_thread
end
