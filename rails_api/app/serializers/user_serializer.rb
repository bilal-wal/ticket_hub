class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :authentication_token, :full_name, :role
end
