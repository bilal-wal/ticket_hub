class Ticket < ApplicationRecord
  has_many :comments

  has_many :ticket_users
  has_many :users, through: :ticket_users
end
