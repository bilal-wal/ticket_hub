class CompanyRequest < ApplicationRecord
  # TODO: custom validate the uniqueness of the company name and user email
  validates :name, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true, email: true
  validates :admin_name, presence: true
end
