class Profile < ApplicationRecord
    has_many :posts
    has_many :topic_threads
    has_many :interests
    has_many :sub_categories, through: :interests
    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: {case_sensitive: false}

   
  def self.search(params)
    profiles= SubCategory.all
    profiles.select {|pro| pro.matches?(params)}
  end

  def matches?(params)
    name= self.name
   
      if params.include?(name)
        return true
      end
    
  return false
  end
end
