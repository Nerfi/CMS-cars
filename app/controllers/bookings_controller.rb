class BookingsController < ApplicationController
   skip_before_action :authenticate_user!, only: :show

  def create


    #booking = Booking.joins(:cars).where("cars.start_date >= ?", Booking.start_date).where("end_date <= end_date",
     #Date.new(2019, 9, 1)).where("date < ?", Date.new(2019, 9, 30)).order(date: :desc)

    #Booking.joins(:car).where(car.start_date >= ?", Booking.start_date).where(car.end_date <= ?", Booking.end_date)

    car = Car.find(params[:car_id])


   booking = Booking.create!(car: car, car_sku: car.sku, amount: car.price, state: 'pending', user: current_user)
   authorize booking


  session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: [{
      name: car.sku,
      images: [car.image],
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
