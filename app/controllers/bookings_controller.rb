class BookingsController < ApplicationController
   skip_before_action :authenticate_user!, only: :show

  def create
    #raise
    car = Car.find(params[:car_id])


   booking = Booking.create!(car: car, car_sku: car.sku, amount: car.price, state: 'pending', user: current_user)
   authorize booking


  session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: [{
      name: car.sku,
      #images: [car.image],
      amount: car.price_cents.to_i,
      currency: 'eur',
      quantity: 1
    }],
    success_url: booking_url(booking),
    cancel_url: booking_url(booking)
  )

  booking.update(checkout_session_id: session.id)
  redirect_to new_booking_payment_path(booking)


end

def show
  @booking = current_user.bookings.find(params[:id])
  authorize @booking
end





end
