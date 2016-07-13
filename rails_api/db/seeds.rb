# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# INFO: companies are dynamic but I am hard coding 4 companies 'comment date: 13 july 2016'
Company.find_or_create_by! name: 'company one'
Company.find_or_create_by! name: 'company two'
Company.find_or_create_by! name: 'company three'
Company.find_or_create_by! name: 'company four'

# INFO: Admin users of TicketHub
User.create! full_name: 'Ali Azmat', email: 'aliazmut@gmail.com', role: User::ROLES[User::ADMIN], password: 'password' rescue nil
User.create! full_name: 'Alex John', email: 'alex@gmail.com', role: User::ROLES[User::ADMIN], password: 'password' rescue nil

# INFO: Company admin to hire agents for their company to process tickets. Agents can't sign up.
User.create! full_name: 'Muhammad Ali', email: 'ali@gmail.com', role: User::ROLES[User::COMPANY_ADMIN], password: 'password' rescue nil
User.create! full_name: 'Alex Mitchels', email: 'mitchels@gmail.com', role: User::ROLES[User::COMPANY_ADMIN], password: 'password' rescue nil

# INFO: Company agents to process tickets belongs to their company clients. They will also accept sign up requests from their company users.
User.create! full_name: 'Katy Sobers', email: 'katy@gmail.com', role: User::ROLES[User::AGENT], password: 'password', company_id: 1 rescue nil
User.create! full_name: 'Hope Casidy', email: 'hope@gmail.com', role: User::ROLES[User::AGENT], password: 'password', company_id: 2 rescue nil

# INFO: Company clients will make ticket for their requirements or satisfaction
User.create! full_name: 'Furqan Ahmad', email: 'ahmad@gmail.com',       role: User::ROLES[User::AGENT], password: 'password', company_id: 1 rescue nil
User.create! full_name: 'Ali Ahmad',    email: 'ali.ahmad@gmail.com',   role: User::ROLES[User::AGENT], password: 'password', company_id: 2 rescue nil

CompanyRequest.find_or_create_by! name: 'Ember',         admin_name: 'Yehuda Katz',      email: 'wycats@gmail.com'
CompanyRequest.find_or_create_by! name: 'Coffeescript',  admin_name: 'Jeremy Ashkenas',  email: 'jeremy@gmail.com'
CompanyRequest.find_or_create_by! name: 'Rails',         admin_name: 'DHH',              email: 'dhh@gmail.com'
CompanyRequest.find_or_create_by! name: 'backbone',      admin_name: 'katy holm',        email: 'holm@gmail.com'

LoginRequest.find_or_create_by! full_name: 'ali safdar', company_id: 1, email: 'ali@gmail.com'
LoginRequest.find_or_create_by! full_name: 'jamal ali', company_id: 1, email: 'jamal@gmail.com'
LoginRequest.find_or_create_by! full_name: 'ahmad bilal', company_id: 1, email: 'ahmad@gmail.com'
LoginRequest.find_or_create_by! full_name: 'usman ali', company_id: 1, email: 'usmanali@gmail.com'
