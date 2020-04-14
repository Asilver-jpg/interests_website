class CreateSubCategory < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_categories do |t|
      t.string :name
      t.string :description
      t.belongs_to :category, null: false, foreign_key: true
    end
  end
end
