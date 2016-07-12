class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.string :title
      t.string :ticket_type
      t.string :status
      t.text :description

      t.timestamps
    end
  end
end
