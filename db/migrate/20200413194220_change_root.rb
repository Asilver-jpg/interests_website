class ChangeRoot < ActiveRecord::Migration[6.0]
  def change
   add_column :categories, :root, :boolean, default: false
  end
end
