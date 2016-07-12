class RemoveRoleFromLoginRequests < ActiveRecord::Migration[5.0]
  def change
    remove_column :login_requests, :role
  end
end
