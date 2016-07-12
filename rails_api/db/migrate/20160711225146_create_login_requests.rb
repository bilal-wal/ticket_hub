class CreateLoginRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :login_requests do |t|
      t.string :full_name
      t.string :email
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
