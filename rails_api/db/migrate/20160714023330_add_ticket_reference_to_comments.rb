class AddTicketReferenceToComments < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :ticket, index: true, foreign_key: true
  end
end
