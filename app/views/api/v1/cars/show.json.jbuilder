#from line 3 till line 6 have to check out because my car has no comments but it do have bookins
#but i do not want to send info about booking so what should i do ?
json.extract! @car, :user_id, :id, :name, :image, :category,:doors, :seats, :gearshift, :air, :lagguage, :pick_up, :price_cents, :start_date, :end_date

