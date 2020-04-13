class AddCategoryIdToSubCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :sub_categories, :category_id, :integer
  end
end
