class LoginRequest < ApplicationRecord
  validates :email, uniqueness: true, presence: true, email: true
  validates :full_name, presence: true

  belongs_to :company

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
