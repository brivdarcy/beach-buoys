user = User.create(first_name: "Julie", last_name: "Grison", email: "jgrison@gmail.com", password: "coucou123")


first = Buoy.create!(name: "Nestor", description: "Nestor the crocodile", price: 5, user: user)
first.image.attach(io: File.open('app/assets/images/crocodile.jpg'), filename: 'crocodile.jpg')
second = Buoy.create!(name: "Fliper", description: "Fliper the dolphin", price: 3, user: user, photo: 'dolphin.jpg')
second.image.attach(io: File.open('app/assets/images/dolphin.jpg'), filename: 'dolphin.jpg')
third = Buoy.create!(name: "Willy", description: "Willy the orca", price: 4, user: user, photo: 'orca_.jpg')
third.image.attach(io: File.open('app/assets/images/orca_.jpg'), filename: 'orca_.jpg')
fourth = Buoy.create!(name: "Rainbow", description: "Rainbow the licorn", price: 6, user: user, photo: 'licorne.jpg')
fourth.image.attach(io: File.open('app/assets/images/licorne.jpg'), filename: 'licorne.jpg')
