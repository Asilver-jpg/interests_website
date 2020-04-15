class Category < ApplicationRecord
    has_many :sub_categories
    has_many :posts

    def self.search(params)
        categories=Category.all
        categories.each do |cat|
            if cat.name == params
                return cat
            end
        end
    end
end
