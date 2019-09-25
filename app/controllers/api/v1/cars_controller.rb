class Api::V1::CarsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_car, only: [ :show, :update, :destroy ]


  def index
    @cars = policy_scope(Car)
  end

  def update
    if @car.update(car_params)
      render :show
    else
      render_error
    end

  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    authorize @car
    if @car.save
      render :show, status: :created
    else
      render_error
      end
   end

  end

  def destroy
    @car.destroy
    head :no_content #404

  end

    private

  def set_car
    @car = Car.find(params[:id])
    authorize @car  # For Pundit
  end

 def car_params
    params.require(:car).permit(:name, :image, :category, :doors , :seats, :gearshift, :air, :lagguage, :pick_up, :start_date, :end_date)

  end

  def render_error
    render json: { errors: @car.errors.full_messages },
      status: :unprocessable_entity
  end

end
