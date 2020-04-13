class Profile < ApplicationRecord
    has_many :posts
    has_many :topic_threads
end
