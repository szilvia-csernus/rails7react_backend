class ChangeUsernamePasswordNotNull < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :username, :string, {:null => false}
    change_column :users, :password_digest, :string, {:null => false}
  end
end
