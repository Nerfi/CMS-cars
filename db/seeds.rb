puts 'creating cars'
user = User.create!(email: 'juajuan@meme.com', password: 123456)

   coche = Car.new(
    name: "lamborgini",
    category: "SUV",
    doors: 2,
    seats: 4,
    lagguage: 5,
    pick_up: "Sevilla",
    gearshift: 'automatic',
    air: true,
    start_date: DateTime.strptime("09/01/2009 17:00", "%m/%d/%Y %H:%M"),
    user: user,
    sku: 'original-lambo',
    image: 'https://images.unsplash.com/photo-1517994112540-009c47ea476b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=781&q=80',
    end_date: DateTime.strptime("09/01/2009 19:00", "%m/%d/%Y %H:%M")


    )

   coche.save!

puts "done"



