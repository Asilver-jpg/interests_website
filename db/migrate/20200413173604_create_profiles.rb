class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :age
      t.string :username
      t.integer :zip_code

      t.timestamps
    end
  end
end
