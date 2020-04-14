class ChangeTopicThreadColumn < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :topic_threads, :categories
    add_foreign_key :topic_threads, :sub_categories
  end
end
