puts 'cleaning DB '
Car.destroy_all

user = User.create!(email: 'fsdan@meme.com', password: 123456)
  puts 'creating cars'


  coche = Car.new [

    {
      name: 'Citroen Cactus',
      category: 'Suv',
      doors: 4,
      seats: 5,
      lagguage: 3,
      pick_up: "Murcia",
      gearshift: 'automatic',
      air: true,
      start_date: DateTime.strptime("09/01/2009 17:00", "%m/%d/%Y %H:%M"),
      user: user,
      sku: 'Citroen',
      remote_image_url: 'https://res.cloudinary.com/nerfi/image/upload/v1569583509/gtbawdyb00fztmg1puxs.jpg',
      end_date: DateTime.strptime("09/10/2009 19:00", "%m/%d/%Y %H:%M"),
      price: 20.00
    }

    {
      name: 'Ferrari Enzo',
      category: 'SUV',
      doors: 3,
      seats: 4,
      lagguage: 2,
      pick_up: "Barcelona",
      gearshift: 'manual',
      air: true,
      start_date: DateTime.strptime("09/15/2009 17:00", "%m/%d/%Y %H:%M"),
      end_date: DateTime.strptime("09/25/2009 17:00", "%m/%d/%Y %H:%M"),
      user: user,
      sku: 'Ferrari',
      remote_image_url: 'https://res.cloudinary.com/nerfi/image/upload/v1569584391/iqaskktohgvytab1vxxx.jpg',
      price: 50.00
    }
    {
      name: 'Aston Martin',
      category: 'Económico',
      doors: 3,
      seats: 4,
      lagguage: 2,
      pick_up: "Sevilla",
      gearshift: 'manual',
      air: true,
      start_date: DateTime.strptime("10/15/2009 17:00", "%m/%d/%Y %H:%M"),
      end_date: DateTime.strptime("10/16/2009 17:00", "%m/%d/%Y %H:%M"),
      user: user,
      sku: 'aston',
      remote_image_url: 'https://res.cloudinary.com/nerfi/image/upload/v1569584686/oqc0zngpj1ksfg55nghm.jpg',
      price: 55.00

    }
    {
      name: 'Seat leon',
      category: 'Económico',
      doors: 5,
      seats: 5,
      lagguage: 3,
      pick_up: "Leon",
      gearshift: 'manual',
      air: true,
      start_date: DateTime.strptime("10/25/2009 17:00", "%m/%d/%Y %H:%M"),
      end_date: DateTime.strptime("10/26/2009 17:00", "%m/%d/%Y %H:%M"),
      user: user,
      sku: 'leon',
      remote_image_url: 'https://res.cloudinary.com/nerfi/image/upload/v1569584929/bde9osdw9stjhg7lpqgh.jpg',
      price: 33.00
    }

    {
      name: 'Toyota',
      category: 'Económico',
      doors: 5,
      seats: 5,
      lagguage: 3,
      pick_up: "cadiz",
      gearshift: 'manual',
      air: true,
      start_date: DateTime.strptime("11/25/2009 17:00", "%m/%d/%Y %H:%M"),
      end_date: DateTime.strptime("10/29/2009 17:00", "%m/%d/%Y %H:%M"),
      user: user,
      sku: 'leon',
      remote_image_url: 'https://res.cloudinary.com/nerfi/image/upload/v1569584929/bde9osdw9stjhg7lpqgh.jpg',
      price: 33.00

    }

    {
    name: "Buggati",
    category: "SUV",
    doors: 2,
    seats: 4,
    lagguage: 5,
    pick_up: "Sevilla",
    gearshift: 'automatic',
    air: true,
    start_date: DateTime.strptime("09/01/2009 17:00", "%m/%d/%Y %H:%M"),
    user: user,
    sku: 'original-buggati',
    remote_image_url: 'https://res.cloudinary.com/nerfi/image/upload/v1569586190/gy4zr9f1bkrsrggahigr.jpg',
    end_date: DateTime.strptime("09/25/2009 19:00", "%m/%d/%Y %H:%M"),
    price: 20.00

    }

    {
    name: "Saab",
    category: "SUV",
    doors: 4,
    seats: 4,
    lagguage: 5,
    pick_up: "Barna",
    gearshift: 'automatic',
    air: true,
    start_date: DateTime.strptime("09/25/2009 17:00", "%m/%d/%Y %H:%M"),
    user: user,
    sku: 'original',
    remote_image_url: 'https://images.unsplash.com/photo-1562412096-ff3a5ae08b02?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80',
    end_date: DateTime.strptime("10/25/2009 19:00", "%m/%d/%Y %H:%M"),
    price: 20.00

    }

    {

    name: "Mini",
    category: "SUV",
    doors: 4,
    seats: 4,
    lagguage: 5,
    pick_up: "Barna",
    gearshift: 'automatic',
    air: true,
    start_date: DateTime.strptime("09/25/2009 17:00", "%m/%d/%Y %H:%M"),
    user: user,
    sku: 'original',
    remote_image_url: 'https://res.cloudinary.com/nerfi/image/upload/v1569586655/cndwqieczalzmwjv2gt0.jpg',
    end_date: DateTime.strptime("10/25/2009 19:00", "%m/%d/%Y %H:%M"),
    price: 20.00


    }
    {


    name: "Fiat",
    category: "SUV",
    doors: 4,
    seats: 4,
    lagguage: 5,
    pick_up: "Granada",
    gearshift: 'automatic',
    air: true,
    start_date: DateTime.strptime("12/25/2009 17:00", "%m/%d/%Y %H:%M"),
    user: user,
    sku: 'original-fiat',
    remote_image_url: 'https://res.cloudinary.com/nerfi/image/upload/v1569586902/ui1hov6qnxlkumcvki95.jpg',
    end_date: DateTime.strptime("12/30/2009 19:00", "%m/%d/%Y %H:%M"),
    price: 20.00

    }

     {


    name: "Fiat",
    category: "SUV",
    doors: 4,
    seats: 4,
    lagguage: 5,
    pick_up: "Granada",
    gearshift: 'automatic',
    air: true,
    start_date: DateTime.strptime("12/25/2009 17:00", "%m/%d/%Y %H:%M"),
    user: user,
    sku: 'original-fiat',
    remote_image_url: 'https://res.cloudinary.com/nerfi/image/upload/v1569586902/ui1hov6qnxlkumcvki95.jpg',
    end_date: DateTime.strptime("12/30/2009 19:00", "%m/%d/%Y %H:%M"),
    price: 20.00

    }


  ]







   coche = Car.new(
    name: "Buggati",
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



