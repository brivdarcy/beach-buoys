puts "Delete bookings"
Booking.destroy_all

puts "Delete reviews"
Review.destroy_all
puts "Delete buoy"
Buoy.destroy_all

puts "Delete User"
User.destroy_all


puts "Creating users"

user = User.create(first_name: "Julie", last_name: "Grison", email: "jgrisond@gmail.com", password: "coucou123")

puts "Creating buoys"

first = Buoy.new(name: "Nestor", description: "Nestor le crocodile", price: 5, address: "16 villa Gaudelet 75011 Paris", person_number: 1)
first.user = user

first.photo.attach(io: File.open('app/assets/images/crocodile.jpg'), filename: 'crocodile.jpg')
first.save!

second = Buoy.new(name: "Fliper", description: "Fliper le dauphin", price: 3, address: "16 rue Cambronne 75015 Paris", person_number: 2)
second.user = user
second.photo.attach(io: File.open('app/assets/images/dolphin.jpg'), filename: 'dolphin.jpg')
second.save!

third = Buoy.new(name: "Willy", description: "Willy l'orque", price: 4, address: "87 rue Oberkampf 75011 Paris", person_number: 1)
third.user = user
third.photo.attach(io: File.open('app/assets/images/orca.jpg'), filename: 'orca.jpg')
third.save!

fourth = Buoy.new(name: "Rainbow", description: "Rainbow la licorne", price: 6, address: "Place Stalingrad 75019 Paris", person_number: 1)
fourth.user = user
fourth.photo.attach(io: File.open('app/assets/images/licorne.jpg'), filename: 'licorne.jpg')
fourth.save!

puts "Done!"
