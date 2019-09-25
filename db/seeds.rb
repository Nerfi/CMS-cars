puts 'creating cars'
user = User.create!(email: 'juankjaddsffsdan@meme.com', password: 123456)

   coche = Car.new(
    name: "Ferrarddi",
    category: "SUV",
    doors: 2,
    seats: 4,
    lagguage: 5,
    pick_up: "Sevilla",
    gearshift: 'automatic',
    air: true,
    start_date: DateTime.strptime("09/01/2009 17:00", "%m/%d/%Y %H:%M"),
    user: user,
    sku: 'original-Maserati',
    #not working img
    remote_image_url: 'https://res.cloudinary.com/nerfi/image/upload/v1569168945/b7ap2bv43gf6maytjn6w.jpg',
    end_date: DateTime.strptime("09/01/2009 19:00", "%m/%d/%Y %H:%M"),
    price: 20.00


    )

   coche.save!

puts "done"



