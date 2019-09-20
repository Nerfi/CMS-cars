class CarsController < ApplicationController
  before_action :set_car, only: [:show,:edit,:update, :destroy]
  skip_before_action :authenticate_user!, only: [:index,:show]


  def index
    #raise

   @cars = policy_scope(Car).order(created_at: :desc)


  end

  def show


  end

  def new
    @car = Car.new
    authorize @car

  end

  def create

   @car = current_user.cars.build(car_params)
   authorize @car


    if @car.save
      redirect_to car_path(@car), notice: 'car was created'
      else
      render :new
    end
  end

  def edit


  end

  def update

    @car.updte(car_params)

  end

  def destroy

    @car.destroy

  end

  private


  def car_params
    params.require(:car).permit(:name, :image, :category, :doors , :seats, :gearshift, :air, :lagguage, :pick_up, :start_date, :end_date)

  end

  def set_car
    authorize @car = Car.find(params[:id])

  end


end


