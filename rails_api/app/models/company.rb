class Company < ApplicationRecord
  validates :name, uniqueness: true

  has_many :users
  has_many :login_requests
  has_many :tickets
end
