class LoginRequest < ApplicationRecord
  validates :email, uniqueness: true, presence: true, email: true
  validates :full_name, presence: true

  belongs_to :company
end
