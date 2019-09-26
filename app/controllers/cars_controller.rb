class CarsController < ApplicationController
  before_action :set_car, only: [:show,:edit,:update, :destroy]
  skip_before_action :authenticate_user!, only: [:index,:show]


  def index

   @cars = policy_scope(Car).order(created_at: :desc)
   case

   when
    params[:query].present?

    #@cars = Car.where("pick_up ILIKE ?", "%#{params[:query]}%")
    @cars = Car.search(params[:query])

    when
    params[:start_date].present? && params[:end_date].present?
    @query = params[:start_date]&& params[:end_date]
    @cars = Car.where("start_date >= ? and end_date <= ?", params[:start_date], params[:end_date])

    when
        #not working returning all the cars
     params[:end_date].present? || params[:start_date].present?
     @query = params[:end_date] || params[:start_date]
      @car = Car.where("start_date >= ? or end_date <= ?",params[:start_date],params[:end_date])

      else

        @cars = Car.all

    end


  end

  def show


  end

  def new
    @car = Car.new
    authorize @car

  end

  def create

   #@car = current_user.cars.build(car_params)
   @car = Car.new(car_params)
   @car.user = current_user
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
    params.require(:car).permit(:name, :image, :category, :doors , :seats, :gearshift, :air, :lagguage, :sku ,:pick_up, :start_date, :end_date)

  end

  def set_car
    authorize @car = Car.find(params[:id])

  end


end


