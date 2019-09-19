class CarsController < ApplicationController

  def index
    @cars = Car.all

  end

  def show
    @car = Car.find(params[:id])

  end

  def new
    @car = Car.new

  end

  def create

   @car = current_user.cars.build(car_params)


    if @car.save
      redirect_to car_path(@car), notice: 'car was created'
      else
      render :new
    end
  end

  def edit
    @car = Car.find(params[:id])

  end

  def update
    @car = Car.find(params[:id])
    @car.updte(car_params)

  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy

  end

  private


  def car_params
    params.require(:car).permit(:name, :image, :category, :doors , :seats, :gearshift, :air, :lagguage, :pick_up, :start_date, :end_date)

  end
end


