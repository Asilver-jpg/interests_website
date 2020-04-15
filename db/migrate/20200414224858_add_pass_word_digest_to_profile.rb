class AddPassWordDigestToProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :password_digest, :string
  end
end
