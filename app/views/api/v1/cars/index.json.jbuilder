json.array! @cars do |car|
  json.extract! car, :id, :name, :image, :category, :doors, :price_cents, :seats, :gearshift, :air, :lagguage, :pick_up,  :start_date, :end_date
end
