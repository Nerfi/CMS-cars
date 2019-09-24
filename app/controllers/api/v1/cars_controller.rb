class Api::V1::CarsController < Api::V1::BaseController
  def index
    @cars = policy_scope(Car)
  end
end
