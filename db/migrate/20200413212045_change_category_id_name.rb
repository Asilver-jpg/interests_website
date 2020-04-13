class ChangeCategoryIdName < ActiveRecord::Migration[6.0]
  def change
    rename_column :topic_threads, :category_id, :sub_category_id
  end
end
