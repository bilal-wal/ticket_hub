class LoginRequestSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :email, :company_id
end
