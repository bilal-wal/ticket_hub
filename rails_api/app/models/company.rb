class Company < ApplicationRecord
  validates :name, uniqueness: true
end
