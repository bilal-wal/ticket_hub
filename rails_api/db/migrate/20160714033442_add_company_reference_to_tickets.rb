class AddCompanyReferenceToTickets < ActiveRecord::Migration[5.0]
  def change
    add_reference :tickets, :company, index: true, foreign_key: true
  end
end
