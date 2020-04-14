class CreateTposts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :body
      t.belongs_to :profile, null: false, foreign_key: true
      t.belongs_to :topic_thread, null: false, foreign_key: true

      t.timestamps
    end
  end
end
