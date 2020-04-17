class Profile < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :topic_threads
    has_many :interests, dependent: :destroy
    has_many :sub_categories, through: :interests
    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: {case_sensitive: false}
    validates :password, presence: true

   
  def self.search(params)
    profiles= Profile.all
    profiles.select {|pro| pro.matches?(params)}
  end

  def matches?(params)
    username= self.username.downcase
   
      if params.downcase.include?(username)
        return true
      end
    
  return false
  end
end
