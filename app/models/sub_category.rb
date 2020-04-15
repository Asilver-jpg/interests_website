class SubCategory < ApplicationRecord
  belongs_to :category
  has_many :topic_threads

  def self.search(params)
    subcategories= SubCategory.all
    subcategories.select {|cat| cat.matches?(params)}
  end

  def matches?(params)
    name= self.name
    name_split= name.split
    name_split.each do |word|
      if word == params
        return true
      end
    end
  return false
  end
end
