class User < ApplicationRecord
  before_save :ensure_authentication_token

  ROLES = %w(admin company_admin client agent)
  ADMIN = 0
  COMPANY_ADMIN = 1
  CLIENT = 2
  AGENT = 3

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :comments

  has_many :ticket_users
  has_many :tickets, through: :ticket_users

  validates :email, uniqueness: true, presence: true
  validates :full_name, presence: true

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

  def self.new_with_password(user_params)
    user_params.merge!(password: SecureRandom.hex(4), role: ROLES[AGENT])
    user_params
  end

  def ensure_authentication_token
    if authentication_token.blank?
      self.authentication_token = generate_authentication_token
    end
  end

  private

  def generate_authentication_token
    loop do
      token = Devise.friendly_token
      break token unless User.where(authentication_token: token).first
    end
  end
end
