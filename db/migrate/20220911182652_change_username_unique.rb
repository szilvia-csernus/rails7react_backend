class ChangeUsernameUnique < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :username, :string, { null: false, uniq: true}
  end
end
