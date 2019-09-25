class Api::V1::CarsController < Api::V1::BaseController
  before_action :set_car, only: [ :show ]

  def index
    @cars = policy_scope(Car)
  end

    private

  def set_car
    @car = Car.find(params[:id])
    authorize @car  # For Pundit
  end


end
