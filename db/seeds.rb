# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :user_name => 'chicken', :password => 'chicken', :admin => true
u2 = User.create :user_name => 'lettuce', :password => 'lettuce', :admin => false
puts "#{ User.count } users created"

Plane.destroy_all
p1 = Plane.create :rows => '4', :columns => '4', :plane_name => "BA101"
p2 = Plane.create :rows => '4', :columns => '4', :plane_name => "BA202"
puts "#{ Plane.count } planes created"

Flight.destroy_all
f1 = Flight.create :number => '001', :origin => 'SYD', :destination => 'MLB', :date => '2023-05-09'
f2 = Flight.create :number => '002', :origin => 'AKL', :destination => 'SYD', :date => '2023-05-09'
puts "#{ Flight.count } flights created" 


Reservation.destroy_all
r1 = Reservation.create :user_id => u1.id, :flight_id => f1.id
puts "#{ Reservation.count } reservations created"

# Associations
f1.reservations << r1
u1.reservations << r1

