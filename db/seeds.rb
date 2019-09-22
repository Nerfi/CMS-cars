puts 'creating cars'
user = User.create!(email: 'juajasdan@meme.com', password: 123456)

   coche = Car.new(
    name: "Masserati",
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
    image: 'https://images.unsplash.com/photo-1517994112540-009c47ea476b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=781&q=80',
    end_date: DateTime.strptime("09/01/2009 19:00", "%m/%d/%Y %H:%M"),
    price: 20.000


    )

   coche.save!

puts "done"



