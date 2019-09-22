class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car
  #stripe
  monetize :amount_cents
end
