json.array! @cars do |car|
  json.extract! car, :id, :name, :image, :category, :doors, :price, :seats, :gearshift, :air, :lagguage, :pick_up
end
