class CompanyRequest < ApplicationRecord
  # TODO: custom validate the uniqueness of the company name and user email
  validates :name, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true, email: true
  validates :admin_name, presence: true

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
