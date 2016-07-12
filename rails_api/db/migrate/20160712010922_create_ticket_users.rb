class CreateTicketUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :ticket_users do |t|
      t.string :role
      t.references :ticket, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
