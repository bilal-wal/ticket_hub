class LoginRequestSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :email
  has_one :company
end
