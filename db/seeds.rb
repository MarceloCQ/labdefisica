# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(student_id: 1, email: 'student@itesm.mx', password:'123456', password_confirmation:'123456')
User.create!(student_id: 2, email: 'instructor@itesm.mx', password:'123456', password_confirmation:'123456', role: 2)
User.create!(student_id: 3, email: 'admin@itesm.mx', password:'123456', password_confirmation:'123456', role: 3)