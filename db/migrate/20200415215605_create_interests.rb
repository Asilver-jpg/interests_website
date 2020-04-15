class CreateInterests < ActiveRecord::Migration[6.0]
  def change
    create_table :interests do |t|
      t.belongs_to :profile, null: false, foreign_key: true
      t.belongs_to :sub_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
