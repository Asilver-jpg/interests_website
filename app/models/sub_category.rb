class SubCategory < ApplicationRecord
  belongs_to :category
  has_many :topic_threads, dependent: :destroy
  has_many :interests, dependent: :destroy
  has_many :profiles, through: :interests
  
  def self.search(params)
    subcategories= SubCategory.all
    subcategories.select {|cat| cat.matches?(params)}
  end

  def matches?(params)
    name= self.name
    name_split= name.split
    name_split.each do |word|
      if word.downcase == params.downcase
        return true
      end
    end
  return false
  end
end

