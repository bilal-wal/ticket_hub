class CreateCompanyRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :company_requests do |t|
      t.string :name
      t.string :email
      t.string :admin_name

      t.timestamps
    end
  end
end
