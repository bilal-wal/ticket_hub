class AddRoleToLoginRequestsAndUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :role, :string
    add_column :login_requests, :role, :string
  end
end
