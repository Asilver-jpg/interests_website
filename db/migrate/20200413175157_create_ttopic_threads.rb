class CreateTtopicThreads < ActiveRecord::Migration[6.0]
  def change
    create_table :topic_threads do |t|
      t.belongs_to :category, null: false, foreign_key: true
      t.string :title
      t.string :description
      t.belongs_to :profile, null: false, foreign_key: true
      t.integer :views

      t.timestamps
    end
  end
end
