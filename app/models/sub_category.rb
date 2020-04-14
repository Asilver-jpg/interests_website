class SubCategory < ApplicationRecord
  belongs_to :category
  has_many :topic_threads
  def sub_category_name=(name)
    self.sub_category = SubCategory.find_or_create_by(name: name)
  end
  def sub_category_name
    self.sub_category ? self.sub_category.name : nil
  end
end
