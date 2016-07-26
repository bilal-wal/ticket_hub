FactoryGirl.define do
  factory :user do
    full_name 'ahmad ali'
    email 'ahmadali@gmail.com'
    password 'password'
    authentication_token 'token_value'
    role 'admin'
  end
end
