class Profile < ApplicationRecord
    has_many :posts
    has_many :topic_threads
    has_many :interests
    has_many :sub_categories, through: :interests
    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: {case_sensitive: false}
end
