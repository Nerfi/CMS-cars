class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car
  #stripe
  monetize :amount_cents

  private

  def refund
    refund = Stripe::Refund.create({
    charge: self.amount_cents,
    amount: self.amount_cents
  })

  end

end
