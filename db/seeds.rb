puts 'creating cars'

  usuario = User.new (
    email: 'juanharobado@gmail.com',
    password: 123456

    )
  usuario.save


   coche = Car.new(
    name: "ferrari",
    category: "economico",
    doors: 2,
    seats: 4,
    air: "false",
    start_date: DateTime.strptime("09/01/2009 17:00", "%m/%d/%Y %H:%M"),
    user: usuario,


    end_date: DateTime.strptime("09/01/2009 19:00", "%m/%d/%Y %H:%M")


    )
   coche.save!

puts "done"


