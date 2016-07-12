class CompanyRequestSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :admin_name
end
