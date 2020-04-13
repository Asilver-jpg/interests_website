class RemoveCategoryIdFromCategories < ActiveRecord::Migration[6.0]
  def change
    remove_column :categories, :category_id
    remove_column :categories, :root
  end
end
