class Category < ApplicationRecord
    has_many :sub_categories, dependent: :destroy
    def self.search(params)
        categories= Category.all
        categories.select {|cat| cat.matches?(params)}
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
