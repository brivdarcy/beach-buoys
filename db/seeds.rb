user = User.create(first_name: "Julie", last_name: "Grison", email: "jgrison@gmail.com", password: "coucou123")


Buoy.create!(name: "Nestor", description: "Nestor the crocodile", price: 5, user: user)
Buoy.create!(name: "Fliper", description: "Fliper the dolphin", price: 3, user: user)
Buoy.create!(name: "Willy", description: "Willy the orca", price: 4, user: user)
Buoy.create!(name: "Rainbow", description: "Rainbow the licorn", price: 6, user: user)
