class AddExtraFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :profile_picture, :binary
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_column :users, :gender, :string
    add_column :users, :phone_number, :string
  end
end
