class ChangeUsernamePasswordConstraints < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :username, :string, options_hash: {:null => false}
    change_column :users, :password_digest, :string, options_hash: {:null => false}
  end
end
