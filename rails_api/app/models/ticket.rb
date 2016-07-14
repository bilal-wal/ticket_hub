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

  def error_response
    result = {}
    self.errors.messages.each do |key, value|
      array = []
      value.each do |val|
        array << "#{key} #{val}"
      end
      result.merge!(key => array)
    end
    return result
  end
end
