

puts "Delete buoy"
Buoy.destroy_all

puts "Delete User"
User.destroy_all


puts "creating users"

user = User.create(first_name: "Julie", last_name: "Grison", email: "jgrisond@gmail.com", password: "coucou123")


first = Buoy.new(name: "Nestor", description: "Nestor the crocodile", price: 5)
first.user = user

first.photo.attach(io: File.open('app/assets/images/crocodile.jpg'), filename: 'crocodile.jpg')
first.save!

second = Buoy.new(name: "Fliper", description: "Fliper the dolphin", price: 3)
second.user = user
second.photo.attach(io: File.open('app/assets/images/dolphin.jpg'), filename: 'dolphin.jpg')
second.save!

third = Buoy.new(name: "Willy", description: "Willy the orca", price: 4)
third.user = user
third.photo.attach(io: File.open('app/assets/images/orca.jpg'), filename: 'orca.jpg')
third.save!

fourth = Buoy.new(name: "Rainbow", description: "Rainbow the licorn", price: 6)
fourth.user = user
fourth.photo.attach(io: File.open('app/assets/images/licorne.jpg'), filename: 'licorne.jpg')
fourth.save!
