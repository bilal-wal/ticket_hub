class Ticket < ApplicationRecord
  has_many :comments

  has_many :ticket_users
  has_many :users, through: :ticket_users

  belongs_to :company

  validates :title, presence: true
  validates :description, presence: true

  before_create :set_status

  def set_status
    self.status = 'awaiting response'
  end
end
