class Profile < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :topic_threads
    has_many :interests, dependent: :destroy
    has_many :sub_categories, through: :interests
    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: {case_sensitive: false}

   
  def self.search(params)
    profiles= Profile.all
    profiles.select {|pro| pro.matches?(params)}
  end

  def matches?(params)
    username= self.username
   
      if params.include?(username)
        return true
      end
    
  return false
  end
end
